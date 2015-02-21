My first successfull Docker based image for Memcached 1.4.22 on CentOS 7.0 intended for use with [CentminMod.com LEMP stack](http://centminmod.com). 

### My Docker Hub repo

* https://registry.hub.docker.com/u/centminmod/docker-centos7-memcached/

### Centmin Mod Docker Development forums

* https://community.centminmod.com/forums/centmin-mod-docker-development.52/

---

#### Grab from Docker Hub

    docker pull centminmod/docker-centos7-memcached

Run docker container

    docker run -d -p 11211:11211 -t centminmod/docker-centos7-memcached

or specify a name e.g. memc1

    docker run --name memc1 -d -p 11211:11211 -t centminmod/docker-centos7-memcached

or map to 33211 local host port

    docker run --name memc1 -d -p 33211:11211 -t centminmod/docker-centos7-memcached

or allocate a custom memory limit and settings e.g. 512MB memory

    docker run --name memc1 -d -p 33211:11211 -t centminmod/docker-centos7-memcached memcached -m 512

or allocate a custom memory limit and settings e.g. 512MB memory and 2 threads

    docker run --name memc1 -d -p 33211:11211 -t centminmod/docker-centos7-memcached memcached -m 512 -t 2

to access container via bash if started with name = memc1

    docker exec -ti memc1 /bin/bash

---

#### Building from Dockerfile

Grab files

    git clone https://github.com/centminmod/docker-centos7-memcached.git

Build Docker image called centminmod-memcached from Dockerfile. Run command within same directory as Dockerfile

    docker build -t centminmod-memcached .

Run docker container

    docker run -d -p 11211:11211 -t centminmod-memcached

or specify a name e.g. memc1

    docker run --name memc1 -d -p 11211:11211 -t centminmod-memcached

or map to 33211 local host port

    docker run --name memc1 -d -p 33211:11211 -t centminmod-memcached

or allocate a custom memory limit and settings e.g. 512MB memory

    docker run --name memc1 -d -p 33211:11211 -t centminmod-memcached memcached -m 512

or allocate a custom memory limit and settings e.g. 512MB memory and 2 threads

    docker run --name memc1 -d -p 33211:11211 -t centminmod-memcached memcached -m 512 -t 2    

to access container via bash if started with name = memc1

    docker exec -ti memc1 /bin/bash