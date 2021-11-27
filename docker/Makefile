export SHELL := /bin/bash
export REGISTRY := registry.lan.aaroncody.com:5000
export NOCACHE := --no-cache
export PYVER := 3.8.0
export CUDAVER := nvidia/cuda:11.0-cudnn8-runtime-ubuntu20.04
export TAG := TEST

.PHONY: all
all: ai-notebook

.PHONY: list
list:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'

.PHONY: clean
clean: clean-images clean-dangling

.PHONY: clean-images
clean-images:
ifneq  ($(strip $(shell docker images -a -q)),)
	docker rmi -f $(shell docker images -a -q)
endif

.PHONY: clean-dangling
clean-dangling:
ifneq ($(strip $(shell docker images -q --filter "dangling=true")),)
	docker rmi -f $(shell docker images -q --filter "dangling=true")
endif

#------------------------------- Notebooks -----------------------------------------------------------------------
.PHONY: ai-notebook
ai-notebook: 
	docker build $(NOCACHE) --build-arg PYTHON_VERSION=$(PYVER) --build-arg BASE_CONTAINER=$(CUDAVER) -t $(REGISTRY)/gpu/ai-notebook:$(TAG) -f Dockerfile . 
	# docker push $(REGISTRY)/gpu/ai-notebook:$(TAG)