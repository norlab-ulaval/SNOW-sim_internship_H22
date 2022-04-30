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
