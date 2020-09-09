docker_http_proxy  := ${http_proxy}
docker_https_proxy := $(docker_http_proxy)
BASE_NAME          := aabs/cocor-build-tools
VERSION            := 0.1.0
TAG                := $(BASE_NAME):$(VERSION)

DOCKER_BUILD_FLAGS := \
	--build-arg http_proxy=$(docker_http_proxy) \
	--build-arg https_proxy=$(docker_https_proxy)

DOCKER_BUILD_CMD := sudo docker build $(DOCKER_BUILD_FLAGS)

.PHONY: all buildimage

all: buildimage ;

prep: ;
# mkdir -p release

buildimage: Dockerfile
	$(DOCKER_BUILD_CMD) -t $(TAG) -f $< .

cleanimage:
	sudo docker rmi $(TAG)
