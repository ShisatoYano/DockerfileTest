# DockerfileTest
Tried creating Dockerfile for the first time.  

## About this repository
This is a Dockerfile to construct Python environment based on Ubuntu 18.04.  
By building this Dockerfile, Ubuntu 18.04 image and Anaconda3(Python3.7) can be installed automatically.  

## Usage
* How to build  
```dracula
$ docker build -t <image name> <directory of Dockerfile>
```  
* How to run a container with built image  
```dracula
$ docker run -it -p 8080:80 --rm --name <container name>
```

