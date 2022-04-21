DOCKERFILE := Dockerfile
PROJECT := ignition
ORIGIN := $(shell git remote get-url origin | sed -e 's/^.*@//g')
REVISION := $(shell git rev-parse --short HEAD)
DOCKERFILES := $(sort $(wildcard */$(DOCKERFILE)))
USERNAME := isabelleysseric

# Directory identities
BUILD_ENV := buildenv
FORTRESS:= fortress

# Image type
BINALY := binary
DEVEL := devel

# Support ubuntu distributions
FOCAL := focal

# Build image tag name
BINARY_FOCAL_FORTRESS_TAG := $(FORTRESS)-$(FOCAL)
DEVEL_FOCAL_FORTRESS_TAG := $(FORTRESS)-$(DEVEL)-$(FOCAL)
DEVEL_FOCAL_BUILD_ENV_TAG := $(BUILD_ENV)-$(FOCAL)

define dockerbuild
	@docker build \
		--file $1 \
		--build-arg GIT_REVISION=$(REVISION) \
		--build-arg GIT_ORIGIN=$(ORIGIN) \
		--tag $2 \
	.
endef

.PHONY: all
all: help

.PHONY: build
build: \
	$(BINARY_FOCAL_FORTRESS_TAG) \
	$(DEVEL_FOCAL_FORTRESS_TAG) \

$(BINARY_FOCAL_FORTRESS_TAG): $(BINALY)/$(FOCAL)/$(FORTRESS)/$(DOCKERFILE)
	$(eval DOCKERIMAGE := "$(USERNAME)/$(PROJECT):$@")
	$(call dockerbuild, $<, $(DOCKERIMAGE))

$(DEVEL_FOCAL_FORTRESS_TAG): $(DEVEL)/$(FOCAL)/$(FORTRESS)/$(DOCKERFILE) $(DEVEL_FOCAL_BUILD_ENV_TAG)
	$(eval DOCKERIMAGE := "$(USERNAME)/$(PROJECT):$@")
	$(call dockerbuild, $<, $(DOCKERIMAGE))

$(DEVEL_FOCAL_BUILD_ENV_TAG): $(DEVEL)/$(FOCAL)/$(BUILD_ENV)/$(DOCKERFILE)
	$(eval DOCKERIMAGE := "$(USERNAME)/$(PROJECT):$@")
	$(call dockerbuild, $<, $(DOCKERIMAGE))

.PHONY: clean
clean:
	@docker image rm $(USERNAME)/$(PROJECT):$(BINARY_FOCAL_FORTRESS_TAG)
	@docker image rm $(USERNAME)/$(PROJECT):$(DEVEL_FOCAL_FORTRESS_TAG)
	@docker image rm $(USERNAME)/$(PROJECT):$(DEVEL_FOCAL_BUILD_ENV_TAG)

.PHONY: pull
pull:
	@docker pull $(USERNAME)/$(PROJECT):$(BINARY_FOCAL_FORTRESS_TAG)
	@docker pull $(USERNAME)/$(PROJECT):$(DEVEL_FOCAL_FORTRESS_TAG)
	@docker pull $(USERNAME)/$(PROJECT):$(DEVEL_FOCAL_BUILD_ENV_TAG)

.PHONY: help
help:
	@echo ""
	@echo " make <command> [option]"
	@echo ""
	@echo " Support commands"
	@echo " help  : print support commands"
	@echo " build : building docker images"
	@echo " clean : clean docker images"
	@echo " pull  : pulling docker images from registry"
	@echo ""
	@echo " Options"
	@echo " See the 'make --help'"
	@echo ""
	
