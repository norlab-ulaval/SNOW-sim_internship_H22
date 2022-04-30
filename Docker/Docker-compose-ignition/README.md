<p align="center">
  <img src="https://norlab.ulaval.ca/images/norlab_acronym_stamp_light.svg" />
</p>

<br/>
<br/>

# DOCKER-COMPOSE-IGNITION SOURCE INSTALLATION

<br/>

[SSIM-Sim](https://norlab.youtrack.cloud/issues?q=project:%20%7B%F0%9D%94%96%20SNOW-sim%7D) (Youtrack)&nbsp; • &nbsp;[SNOW](https://norlab.ulaval.ca/research/snow/) (WebSite)&nbsp; • &nbsp;[isabelleysseric](https://hub.docker.com/u/isabelleysseric) (Docker Hub)&nbsp; • &nbsp;[SNOW-sim](https://github.com/norlab-ulaval/SNOW-sim_internship_H22) (GitHub)&nbsp; • &nbsp;[Wiki SNOW-sim](https://github.com/isabelleysseric/SNOW-sim_internship_H22/wiki) (Wiki) 

<br/>

*Author: Isabelle Eysseric*

<br/>
<br/>

## Introduction

THis is Docker Compose for Gazebo Ignition Fortress.  

<br/>
<br/>

## Instructions

Pre-run (local)

```shell
$ sh scripts/generate_docker_xauth.sh
```

Start

```shell
$ docker-compose -f <local or remote>/<intel or nvidia>/docker-compose.yml up
```

End

```shell
$ docker-compose -f <local or remote>/<intel or nvidia>/docker-compose.yml down
```

Removal

```shell
$ docker-compose -f <local or remote>/<intel or nvidia>/docker-compose.yml down -v --rmi all
```

<br/>
<br/>

## Example

How to run it locally and with Intel graphics.

```shell
$ docker-compose -f local/intel/docker-compose.yml up
```

