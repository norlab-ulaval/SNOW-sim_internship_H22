<p align="center">
  <img src="https://github.com/norlab-ulaval/SNOW-sim_internship_H22/blob/master/norlab_logo_noir.PNG?raw=true" />
</p>


<br/>
<br/>

# SNOW-SIM PROJECT: BEST SIMULATOR FOR OFF-ROAD & EXTREME ENVIRONMENTS

<br/>

[SSIM-Sim](https://norlab.youtrack.cloud/issues?q=project:%20%7B%F0%9D%94%96%20SNOW-sim%7D) (Youtrack)&nbsp; • &nbsp;[SNOW](https://norlab.ulaval.ca/research/snow/) (WebSite)&nbsp; • &nbsp;[isabelleysseric](https://hub.docker.com/u/isabelleysseric) (Docker Hub)&nbsp; • &nbsp;[SNOW-sim](https://github.com/norlab-ulaval/SNOW-sim_internship_H22) (GitHub)&nbsp; • &nbsp;[Wiki SNOW-sim](https://github.com/norlab-ulaval/SNOW-sim_internship_H22/wiki) (Wiki) 

<br/>

*Author: Isabelle Eysseric*

<br/>
<br/>

## Introduction

**Project goal**: Have access to a simulator for doing research on mobile robotic control algorithms subject to adversarial conditions.

<br/>
  
**Result**: Gazebo Ignition Fortress is the best simulator for the SNOW project  

<br/>

**The project consisted of 3 phases**:  

* Phase 1: Research and analysis of simulators in mobile robotics  
* Phase 2: Tests on the two selected simulators  
* Phase 3: Deployment of the best simulator  
  
Currently with our material conditions and those of the field of mobile robotics, the ideal simulator is Gazebo Ignition (Fortress version).  
  
In this repository, there are 3 folders, one for the simulator with the models and the scripts to install it on Ubuntu 20.04 and do tests, one for the docker images to install it from any environment, one with the models built under Blender and another for the final report.  
  
<br/>
<br/>
  
## Structure
  
SNOW-sim_internship_H22-main  
│  
├── Docker  
│      │  
│      ├── Docker-Ignition  
│      │      ├── binary  
│      │      │       └── focal  
│      │      │                 └── fortress  
│      │      │                     └── Dockerfile  
│      │      ├── devel  
│      │      │      └── focal  
│      │      │             ├── buildenv  
│      │      │             │      └── Dockerfile  
│      │      │             └── fortress  
│      │      │                     └── Dockerfile  
│      │      ├── entrypoint  
│      │      │      └── devel.sh  
│      │      ├── LICENSE  
│      │      ├── Makefile  
│      │      └── README.md  
│      │  
│      ├── Docker-compose-ignition  
│      │      ├── local  
│      │      │      ├── Intel  
│      │      │      │      └── docker-compose.yml  
│      │      │      └── Nvidia  
│      │      │               └── docker-compose.yml  
│      │      ├── remote  
│      │      │      ├── Intel  
│      │      │      │      └── docker-compose.yml  
│      │      │      └── Nvidia  
│      │      │               └── docker-compose.yml  
│      │      ├── scripts  
│      │      │      ├── generate_docker_xauth.sh  
│      │      │      └── nvidia-docker2-install.sh  
│      │      ├── LICENSE  
│      │      └── README.md  
│      │  
│      └── README.md  
│     
├── Modeling  
│      │  
│      ├── Blender  
│      │      ├── particle_dynamics.blend  
│      │      ├── particle_dynamics_without_collection.blend  
│      │      ├── particle_dynamics_with_sun_and_camera.blend  
│      │      ├── soft_body.blend  
│      │      ├── soft_body_without_collection.blend  
│      │      ├── soft_body_with_sun_and_camera.blend  
│      │      └── README.md  
│      │  
│      ├── Collada  
│      │      ├── fluid_dynamics_CubeAquarium.dae  
│      │      ├── fluid_dynamics_CubeEffector.dae  
│      │      ├── fluid_dynamics_SphereFlow.dae  
│      │      ├── soft_body_CubeSoft1.dae  
│      │      ├── soft_body_CubeSoft2.dae  
│      │      ├── soft_body_PlaneGround.dae  
│      │      └── README.md  
│      │  
│      └── README.md  
│     
├── Simulators  
│      │  
│      ├── AGXUnity  
│      │      └── README.md  
│      │  
│      └── Ignition  
│              ├── Fuel  
│              │      ├── Fluid  
│              │      │      ├── meshes  
│              │      │      │      └── fluid_dynamics.dae  
│              │      │      ├── thumbnails  
│              │      │      │      ├── 1.png  
│              │      │      │      ├── 2.png  
│              │      │      │      ├── 3.png  
│              │      │      │      ├── 4.png  
│              │      │      │      └── 5.png  
│              │      │      ├── model.config  
│              │      │      └── model.sdf  
│              │      ├── Particle  
│              │      │      ├── meshes  
│              │      │      │      ├── particle_dynamics.dae  
│              │      │      │      ├── particle_dynamics.mtl  
│              │      │      │      └── particle_dynamics.obj  
│              │      │      ├── thumbnails  
│              │      │      │      ├── 1.png  
│              │      │      │      ├── 2.png  
│              │      │      │      ├── 3.png  
│              │      │      │      ├── 4.png  
│              │      │      │      └── 5.png  
│              │      │      ├── model.config  
│              │      │      └── model.sdf  
│              │      ├── Soft  
│              │      │      ├── meshes  
│              │      │      │      └── soft_body_cube.dae  
│              │      │      ├── thumbnails  
│              │      │      │      ├── 1.png  
│              │      │      │      ├── 2.png  
│              │      │      │      └── 3.png  
│              │      │      ├── model.config  
│              │      │      └── model.sdf  
│              │      └── README.md  
│              ├── scripts  
│              │      ├── install_ignition.bash  
│              │      ├── test_ignition.bash  
│              │      ├── test_ignition_ros_bridge.bash  
│              │      └── README.md  
│              ├── template_model.sdf  
│              ├── template_world.sdf  
│              └── README.md  
|  
├── Report  
│      ├── Final_Report_Simulators.pdf  
│      └── README.md  
│  
└── README.md 

<br/>
<br/>
  
  
  
