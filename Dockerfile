# pull base image
FROM ubuntu:18.04

# update packages
RUN set -x && \
    apt update && \
    apt upgrade -y

# installation
RUN set -x && \
    apt install -y wget && \
    apt install -y sudo

# anaconda
RUN set -x && \
    wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh && \
    bash Anaconda3-2019.10-Linux-x86_64.sh -b && \
    rm Anaconda3-2019.10-Linux-x86_64.sh

# path setting
ENV PATH $PATH:/root/anaconda3/bin

# python library
WORKDIR /root
ADD requirements.txt /root
RUN pip install -r requirements.txt

# move to root directory
WORKDIR ../

CMD ["/bin/bash"]