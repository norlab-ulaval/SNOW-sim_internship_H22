<p align="center">
  <img src="https://norlab.ulaval.ca/images/norlab_acronym_stamp_light.svg" />
</p>

<br/>
<br/>
<br/>

<span style="font-family:Verdana; color:#4FD6F7;font-weight:700;font-size:30px">
    DOCKER IGNITION SIMULATOR 🐋
</span>

***

<span style="font-family:Verdana; font-size:14px"> </span>

<span style="font-family:Verdana; font-weight:bold;">Project related link</span><span style="font-family:Verdana;">: </span>  [<span style="font-family:Verdana;">SSIM</span>](https://norlab.youtrack.cloud/issues?q=project:%20%7B%F0%9D%94%96%20SNOW-sim%7D) <span style="font-family:Verdana;">(Youtrack)</span>    •   [<span style="font-family:Verdana;">norlabsnow</span>](https://hub.docker.com/u/norlabsnow)  <span style="font-family:Verdana;">(Docker Hub)</span>   •   [<span style="font-family:Verdana;">Norlab_SNOW_sim</span>](https://github.com/norlab-ulaval/SNOW-sim_internship_H22)  <span style="font-family:Verdana;">(GitHub)</span>  •   [<span style="font-family:Verdana;">Norlab_SNOW</span>](https://norlab.ulaval.ca/research/snow/)  <span style="font-family:Verdana;">(WebSite)</span>

<span style="font-family:Verdana; font-weight:bold;">Author</span><span style="font-family:Verdana; font-size:14px">: Isabelle Eysseric</span>

<br/>
<br/>
<br/>
<br/>

<span style="font-family:Verdana; color:#FC8955;font-weight:700;font-size:20px">
    INTRODUCTION
</span>

***


<span style="font-family:Verdana;">This is a container for </span> [<span style="font-family:Verdana;">ignition robotics</span>](https://ignitionrobotics.org/home)  <span style="font-family:Verdana;">version </span> [<span style="font-family:Verdana;">Fortress</span>](https://ignitionrobotics.org/docs/fortress).

<span style="font-family:Verdana;">
    Here, you can download the Gazebo Ignition (Fortress) image.  
    <br/> <br/>
</span>

<span style="font-family:Verdana; font-weight:bold;">Project goal</span><span style="font-family:Verdana;">: Have access to a simulator for doing research on mobile robotic control algorithms subject to adversarial conditions.
</span>

<br/>
<br/>
<br/>
<br/>

<span style="font-family:Verdana; color:#FC8955;font-weight:700;font-size:20px">
    SUPPORTS
</span>

***

<span style="font-family:Verdana; font-size:14px">
In this folder you have several installation methods (Binary or Source) but also several versions of Ubuntu (18.04 or 20.04) or several versions of Gazebo Ignition (Fortress or others).

Currently, there is Gazebo Ignition (Fortress) on Ubuntu 20.04 but you have a choice with the installation (Binary or Source).
</span>



<br/>


<span style="font-family:Verdana; color:#0583D2;font-weight:700;font-size:15px">
    Plateform 
</span>

<span style="font-family:Verdana; font-size:14px">
    <ul "list-style-type: circle;">
      <li>Ubuntu 20.04 (Focal)</li>
    </ul>
</span>

<br/>

<span style="font-family:Verdana; color:#0583D2;font-weight:700;font-size:15px">
    Gazebo Ignition Versions
</span>

<span style="font-family:Verdana; font-size:14px">
    <ul "list-style-type: circle;">
      <li>Fortress</li>
    </ul>
</span>

<br/>

<span style="font-family:Verdana; color:#0583D2;font-weight:700;font-size:15px">
    Installations Type
</span>

<span style="font-family:Verdana; font-size:14px">
    <ul "list-style-type: circle;">
      <li>Binary</li>
      <li>Source</li>
    </ul>
</span>

<br/>
<br/>
<br/>

<span style="font-family:Verdana; color:#FC8955;font-weight:700;font-size:20px">
    USAGE
</span>

***


<span style="font-family:Verdana; font-weight:bold;">Step 1</span><span style="font-family:Verdana;">: Download the folder <code>docker-ignition</code> </span>

```shell
sudo git clone https://github.com/norlab-ulaval/SNOW-sim_internship_H22/tree/main/DOCKER_Ignition.git
```
<br/>

<span style="font-family:Verdana; font-weight:bold;">Step 1</span><span style="font-family:Verdana;">: Extract it on <code>/home/user/</code> </span>


```shell
unzip docker-ignition.zip
```
<br/>

<span style="font-family:Verdana; font-weight:bold;">Step 1</span><span style="font-family:Verdana;">: Build all containers from the folder <code>docker-ignition</code> </span>

```shell
cd /home/user/docker-ignition/
make build
```

<br/>

<span style="font-family:Verdana; font-weight:bold;">Step 1</span><span style="font-family:Verdana;">: Build a specific container, for example here: <code>binary/focal/fortress</code> </span>


```shell
cd /home/user/docker-ignition/
make fortress-focal
```
