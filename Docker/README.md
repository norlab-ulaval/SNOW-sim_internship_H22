<p align="center">
  <img src="https://norlab.ulaval.ca/images/norlab_acronym_stamp_light.svg" />
</p>

<br/>
<br/>

## DOCKER IGNITION SIMULATOR 🐋

Project related link:   [SSIM](https://norlab.youtrack.cloud/issues?q=project:%20%7B%F0%9D%94%96%20SNOW-sim%7D) <span style="font-family:Verdana;">(Youtrack)</span>    •   [isabelleysseric](https://hub.docker.com/u/isabelleysseric)  (Docker Hub)   •   [Norlab_SNOW_sim](https://github.com/norlab-ulaval/SNOW-sim_internship_H22) (GitHub) •   [Norlab_SNOW](https://norlab.ulaval.ca/research/snow/)  (WebSite)

*Author*: Isabelle Eysseric (internship H22)

<br/>
<br/>

## Introduction  

This is a container for [ignition robotics](https://ignitionrobotics.org/home)  version [Fortress](https://ignitionrobotics.org/docs/fortress).  

Here, you can download the Gazebo Ignition (Fortress) image.  

*Project goal*: Have access to a simulator for doing research on mobile robotic control algorithms subject to adversarial conditions.  

<br/>
<br/>

## Supports

In this folder you have several installation methods (Binary or Source) but also several versions of Ubuntu (18.04 or 20.04) or several versions of Gazebo Ignition (Fortress or others).  

Currently, there is Gazebo Ignition (Fortress) on Ubuntu 20.04 but you have a choice with the installation (Binary or Source).  

<br/>


**Plateform**:  
* Ubuntu 20.04 (Focal)

<br/>

**Gazebo Ignition Versions**:  
* Fortress  

<br/>

**Installations Type**:  
* Binary  
* Source  

<br/>
<br/>
<br/>

## Instructions

**Step 1**: Download the folder `docker-ignition`

```shell
sudo git clone https://github.com/norlab-ulaval/SNOW-sim_internship_H22/tree/main/DOCKER_Ignition.git
```
<br/>

**Step 2**: Extract it on `/home/user/`

```shell
unzip docker-ignition.zip
```

<br/>

**Step 3**: Build all containers from the folder `docker-ignition`

```shell
cd /home/user/docker-ignition/
make build
```

<br/>

**Step 4**: Build a specific container, for example here: `binary/focal/fortress`

```shell
cd /home/user/docker-ignition/
make fortress-focal
```

<br/>
<br/>

## Create an application in Docker

Link: https://www.geeksforgeeks.org/introduction-to-docker/?ref=gcse
Link: https://jsta.github.io/r-docker-tutorial/04-Dockerhub.html


**My Variables**:
```shell
<user>: Norlab
<image name>: python-test
<image ID>: 8ddf308587b2
<tag>: latest
<DockerHub username>: isabelleysseric 
```

<br/>
  
### CREATE A DOCKER CONTAINER
<br/>
  
*Step 1*: Create a folder with 2 files  
```shell
gedit /home/<user>/Dockerfile
gedit /home/<user>/main.py
```

<br/>
  
*Step 2*: Create a Docker image  
```shell
docker build -t <image name> .
```

<br/>
  
*Step 3*: Run the Docker image  
```shell
docker run <image name>
```

<br/>
  
*Step 4*: See list Docker images  
```shell
docker images
```

<br/>
<br/>

###   PUSH ON DOCKER HUB

<br/>
  
*Step 5*: Login on Hub Docker
```shell
docker login
docker login -u <username>
focker login -u <username> -p <password>
```

<br/>

*Step 6*: Create Repository on Hub Docker
Link: https://hub.docker.com/repositories

<br/>

*Step 6*: Tag your image
```shell
docker tag <image ID> <DockerHub username>/<image name>:<tag>
```
<br/>

*Step 7*: Push your image to Docker Hub repository
```shell
docker push <DockerHub username>/<image name>
```

<br/>
<br/>  
  
### LOAD/SAVE FROM DOCKER HUB

<br/>
  
*Step 8*: Fetch the image from Docker Hub
```shell
docker rmi -f <image ID>
```

<br/>
  
*Step 8*: Run the image from Docker Hub
```shell
docker run <DockerHub username>/python-test
```

<br/>
  
*Step 9*: Save the Docker image
```shell
docker save <image name> > <image name>.tar
```

<br/>
  
*Step 10*: Load the Docker container from the archived taf file
```shell
docker load --input <image name>.tar
```

<br/>
