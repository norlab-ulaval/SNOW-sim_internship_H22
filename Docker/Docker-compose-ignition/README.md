<p align="center">
  <img src="https://norlab.ulaval.ca/images/norlab_acronym_stamp_light.svg" />
</p>

<br/>

# DOCKER COMPOSE FOR IGNITION FORTRESS

<br/>
<br/>

## USAGE

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

## EXAMPLE

How to run it locally and with Intel graphics.

```shell
$ docker-compose -f local/intel/docker-compose.yml up
```

