##@ Help

define USAGE_OPTIONS

Options:

  \033[36mREGISTRY\033[0m  
		 The image registry to use when building and pushing docker images.
		 This option is available when using: make images|build
		 Ex: \033[36mmake REGISTRY="exampleorg/registry"\033[0m
		 Default is docker.io/exampleorg/registry as an example
endef
export USAGE_OPTIONS

# The help target prints out all targets with descriptions organized
# into categories
# '##@' in the make files sets the category
# ## in the make targets sets the target description
.PHONY: help
help: ## Display this help message
	@echo -e "This is an example extension service for Envoy Gateway that responds to xDS modification requests to inject/modify Envoy Proxy configuration that was generated by Envoy Gateway\n"
	@awk 'BEGIN {FS = ":.*##"; printf "Usage:\n  make \033[36m<target>\033[0m \033[36m<options>\033[0m\n\nTargets\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-25s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
	@echo -e "$$USAGE_OPTIONS"

