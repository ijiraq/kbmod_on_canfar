
This git repo contains the Dockerfile needed to build a container that supports CUDA develoment.  This is 
available to help with the use of the `kbmod` program.   The container is meant for use on CANFAR science portal but can be used anywhere you can run a docker container.

There is a Makefile to aid building and pushing.

** build the docker container **
make biuld


** run  the docker container **
docker run --interactive --tty --rm -v $(pwd)/kbmod:/kbmod images.canfar.net/uvickbos/kbmod:0.1 bash

** push the docker contianer **
# to be allowed to PUSH you must first login to the canfar docker repository.

make push



