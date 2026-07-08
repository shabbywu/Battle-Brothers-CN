package localization

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
)

type Manifest struct {
	Version    int         `json:"version"`
	Language   string      `json:"language"`
	Components []Component `json:"components"`
}

type Component struct {
	ID          string   `json:"id"`
	Type        string   `json:"type"`
	Name        string   `json:"name"`
	Description string   `json:"description,omitempty"`
	Version     string   `json:"version,omitempty"`
	ProjectID   int      `json:"project_id"`
	JSONPath    string   `json:"json_path"`
	PackageName string   `json:"package_name"`
	Detect      []string `json:"detect,omitempty"`
	Required    bool     `json:"required,omitempty"`
}

type ProjectComponent struct {
	Component
	JSONBaseDir string
}

func LoadManifest(path string) (Manifest, string, error) {
	content, err := os.ReadFile(path)
	if err != nil {
		return Manifest{}, "", err
	}
	manifest := Manifest{}
	if err := json.Unmarshal(content, &manifest); err != nil {
		return Manifest{}, "", err
	}
	if manifest.Version == 0 {
		return Manifest{}, "", fmt.Errorf("manifest version is required")
	}
	if manifest.Language == "" {
		return Manifest{}, "", fmt.Errorf("manifest language is required")
	}
	baseDir := filepath.Dir(path)
	return manifest, baseDir, nil
}

func ProjectComponents(manifestPath string) ([]ProjectComponent, error) {
	manifest, baseDir, err := LoadManifest(manifestPath)
	if err != nil {
		return nil, err
	}
	components := []ProjectComponent{}
	for _, component := range manifest.Components {
		if component.ProjectID == 0 {
			continue
		}
		if component.JSONPath == "" {
			return nil, fmt.Errorf("component %s json_path is required", component.ID)
		}
		components = append(components, ProjectComponent{
			Component:   component,
			JSONBaseDir: filepath.Join(baseDir, filepath.FromSlash(component.JSONPath)),
		})
	}
	return components, nil
}
