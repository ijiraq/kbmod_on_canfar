
This git repo contains the Dockerfile needed to build a container that supports CUDA develoment.  This is 
available to help with the use of the `kbmod` program.   The container is meant for use on CANFAR science portal but can be used anywhere you can run a docker container.

There is a Makefile to aid building and pushing.

## build the docker container 
`make biuld`

## run  the docker container 
`docker run --interactive --tty --rm -v $(pwd)/kbmod:/kbmod images.canfar.net/uvickbos/kbmod:0.1 bash `

## push the docker contianer **
*to be allowed to PUSH you must first login to the canfar docker repository. This only needs to be done once per device where you run docker push
When you login you will be asked for your password.  This is your 'CLI Secret' for images.canfar.net which you can find in the 'User Profile' area on the images.canfar.net site *

docker login -u ${CANFAR_USER_NAME} images.canfar.net 

make push



