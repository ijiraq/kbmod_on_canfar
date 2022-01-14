
DEVNAME = kbmod

NAME = images.canfar.net/uvickbos/$(DEVNAME)
VERSION = 0.1

build: dependencies Dockerfile
	wget -q -N https://developer.download.nvidia.com/hpc-sdk/22.1/nvhpc-22-1_22.1_amd64.deb
	wget -q -N https://developer.download.nvidia.com/hpc-sdk/22.1/nvhpc-2022_22.1_amd64.deb
	docker build -t $(NAME):$(VERSION) -f Dockerfile .

push: 
	docker push $(NAME):$(VERSION) 

dependencies: 

init:
	mkdir -p build

.PHONY: clean
clean:
	\rm -rf build
