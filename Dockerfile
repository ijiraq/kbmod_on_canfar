FROM jupyter/scipy-notebook:latest

USER root

RUN apt-get -y update
RUN apt-get -y install sudo sssd acl
ADD src/nsswitch.conf /etc/

COPY src/python.yml /tmp
RUN rm /opt/conda/conda-meta/pinned
RUN mamba env update -n base --file /tmp/python.yml --prune \
    && mamba clean --all --quiet --yes

RUN apt-get install -y gfortran 
RUN apt-get install -y libnuma1 libncursesw5 libtinfo5
COPY nvhpc-22-1_22.1_amd64.deb  ./
COPY nvhpc-2022_22.1_amd64.deb ./
RUN apt-get install -y ./nvhpc-22-1_22.1_amd64.deb ./nvhpc-2022_22.1_amd64.deb
RUN apt-get -y clean
RUN rm nvhpc-22-1_22.1_amd64.deb
RUN rm nvhpc-2022_22.1_amd64.deb 


CMD [ "bash" ]
