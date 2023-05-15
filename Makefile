.DEFAULT_GOAL:=help

ifeq ($(shell go env GOOS),windows)
BINARY_SUFFIX := .exe
else
BINARY_SUFFIX :=
endif


##@ Build Binary
.PHONY: push-to-paratranz
push-to-paratranz: ## 构建 push-to-paratranz 命令
	go build -o bin/push-to-paratranz${BINARY_SUFFIX} -trimpath ./cmd/push-to-paratranz


.PHONY: sync-from-paratranz
sync-from-paratranz: ## 构建 sync-from-paratranz 命令
	go build -o bin/sync-from-paratranz${BINARY_SUFFIX} -trimpath ./cmd/sync-from-paratranz



.PHONY: help
help:
	@awk 'BEGIN {FS = ":.*##"; printf "Usage: make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)