<p align="center">
  <img src="https://github.com/norlab-ulaval/SNOW-sim_internship_H22/blob/master/norlab_logo_noir.PNG?raw=true" />
</p>

<br/>
<br/>

# DOCKER-IGNITION BINARY INSTALLATION

<br/>

[SSIM-Sim](https://norlab.youtrack.cloud/issues?q=project:%20%7B%F0%9D%94%96%20SNOW-sim%7D) (Youtrack)&nbsp; • &nbsp;[SNOW](https://norlab.ulaval.ca/research/snow/) (WebSite)&nbsp; • &nbsp;[isabelleysseric](https://hub.docker.com/u/isabelleysseric) (Docker Hub)&nbsp; • &nbsp;[SNOW-sim](https://github.com/norlab-ulaval/SNOW-sim_internship_H22) (GitHub)&nbsp; • &nbsp;[Wiki SNOW-sim](https://github.com/isabelleysseric/SNOW-sim_internship_H22/wiki) (Wiki) 

<br/>

*Author: Isabelle Eysseric*

<br/>
<br/>

## INTRODUCTION


<span style="font-family:Verdana;">This is a container for </span> [<span style="font-family:Verdana;">ignition robotics</span>](https://ignitionrobotics.org/home)  <span style="font-family:Verdana;">version </span> [<span style="font-family:Verdana;">Fortress</span>](https://ignitionrobotics.org/docs/fortress).

<span style="font-family:Verdana;">
    Here, you can download the Gazebo Ignition (Fortress) image.  
    <br/> <br/>
</span>

<span style="font-family:Verdana; font-weight:bold;">Project goal</span><span style="font-family:Verdana;">: Have access to a simulator for doing research on mobile robotic control algorithms subject to adversarial conditions.
</span>

<br/>
<br/>

## Supports

In this folder you have several installation methods (Binary or Source) but also several versions of Ubuntu (18.04 or 20.04) or several versions of Gazebo Ignition (Fortress or others).  

Currently, there is Gazebo Ignition (Fortress) on Ubuntu 20.04 but you have a choice with the installation (Binary or Source).  

<br/>


**Plateform**:  
* Ubuntu 20.04 (Focal)
* 
<br/>

**Gazebo Ignition Versions**:  
* Fortress  

<br/>

**Installations Type**:  
* Binary  
* Source

<br/>
<br/>

## Instructions

*Step 1*: Download the folder `docker-ignition` 

```shell
sudo git clone https://github.com/norlab-ulaval/SNOW-sim_internship_H22/tree/main/DOCKER_Ignition.git
```

<br/>

*Step 1*: Extract it on `/home/user/` 

```shell
unzip docker-ignition.zip
```

<br/>

*Step 1*: Build all containers from the folder `docker-ignition`  

```shell
cd /home/user/docker-ignition/
make build
```

<br/>

*Step 1*: Build a specific container, for example here: `binary/focal/fortress`

```shell
cd /home/user/docker-ignition/
make fortress-focal
```
