package paratranz

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"os"

	"github.com/levigross/grequests"
	"github.com/mholt/archiver/v3"
	"github.com/pkg/errors"
)

const ParaTranzAPIHost = "https://paratranz.cn/api"

var (
	HashMatchedError = errors.New("hashMatched")
)

type API struct {
	*grequests.Session
}

func NewClient(token string) *API {
	session := grequests.NewSession(&grequests.RequestOptions{
		Headers: map[string]string{
			"Authorization": token,
		},
	})
	return &API{
		Session: session,
	}
}

// ListFiles: 获取项目文件列表
func (p *API) ListFiles(projectID int) ([]ParaTranzFileInfo, error) {
	result := []ParaTranzFileInfo{}
	url := ParaTranzAPIHost + fmt.Sprintf("/projects/%d/files", projectID)
	resp, err := p.Get(url, nil)
	if err != nil {
		return result, err
	}

	if err := resp.JSON(&result); err != nil {
		return result, err
	}
	return result, nil
}

// CreateFile: 上传并创建文件，文件名不能与 path 指定的目录中的文件冲突
func (p *API) CreateFile(projectID int, content []byte, filename, filepath string) (ParaTranzFileInfo, error) {
	url := ParaTranzAPIHost + fmt.Sprintf("/projects/%d/files", projectID)
	resp, err := p.Post(url, &grequests.RequestOptions{
		Files: []grequests.FileUpload{
			{FileName: filename, FileContents: io.NopCloser(bytes.NewReader(content))},
		},
		Data: map[string]string{
			"path": filepath,
		},
	})
	if err != nil {
		return ParaTranzFileInfo{}, err
	}

	respBody := struct {
		File ParaTranzFileInfo `json:"file"`
	}{}
	respContent := resp.Bytes()
	if err := json.Unmarshal(respContent, &respBody); err != nil {
		return ParaTranzFileInfo{}, errors.Wrapf(err, "Resp Content: \"%s\"", string(respContent))
	}
	return respBody.File, nil
}

func (p *API) UpdateFile(projectID, fileID int, content []byte, filename string) (ParaTranzFileInfo, error) {
	result := ParaTranzFileInfo{}
	url := ParaTranzAPIHost + fmt.Sprintf("/projects/%d/files/%d", projectID, fileID)
	resp, err := p.Post(url, &grequests.RequestOptions{
		Files: []grequests.FileUpload{
			{FileName: filename, FileContents: io.NopCloser(bytes.NewReader(content))},
		},
	})
	if err != nil {
		return result, err
	}

	respBody := struct {
		File   ParaTranzFileInfo `json:"file"`
		Status string            `json:"status"`
	}{}
	respContent := resp.Bytes()
	if err := json.Unmarshal(respContent, &respBody); err != nil {
		return ParaTranzFileInfo{}, errors.Wrapf(err, "Resp Content: \"%s\"", string(respContent))
	}
	if respBody.File.ID == 0 {
		if respBody.Status == HashMatchedError.Error() {
			return respBody.File, HashMatchedError
		}
		return respBody.File, fmt.Errorf("更新失败, %s", string(respContent))
	}
	return respBody.File, nil
}

func (p *API) DownloadArtifacts(projectID int, destDir string) error {
	url := ParaTranzAPIHost + fmt.Sprintf("/projects/%d/artifacts/download", projectID)
	resp, err := p.Session.Get(url, nil)
	if err != nil {
		return errors.Wrap(err, "Failed to download artifacts")
	}

	// save file to templfile
	artifactsZip, err := ioutil.TempFile("", "artifacts.zip")
	defer os.Remove(artifactsZip.Name())
	if err != nil {
		return errors.Wrap(err, "Failed to save artifacts")
	}
	if _, err := artifactsZip.Write(resp.Bytes()); err != nil {
		return errors.Wrap(err, "Failed to save artifacts")
	}

	arc := archiver.NewZip()
	if err := arc.Unarchive(artifactsZip.Name(), destDir); err != nil {
		return errors.Wrap(err, "failed to unarchive artifacts")
	}
	return nil
}
