BASIC API-GATEWAY
=================

Description:
------------
This is a example of api-gateway based in [Kong](https://konghq.com/). For this example, We will use docker and kong in its latest version.
The start to build a microservice project.


Prerequisites / Requirements
----------------------------
install these requirements

1. Download and Install [Docker](https://docs.docker.com/v17.09/engine/installation/)

Getting Started
---------------
This example is supported in [Kong's document](https://docs.konghq.com/install/docker/?_ga=2.111509126.345414232.1566171411-1518999240.1565237355) DB-less mode. This mode not use databases. You need work with a file yml named "kong.yml".

1. clone this repository:
  `git clone git@github.com:jack-factor/basic-api-kong.git`

2. create a docker network:
  `docker network create kong-net`

3. create a image (into repository):
  `docker build . -t king-kong`

4. create a container:
  `docker run -d --name king-kong \
     --network=kong-net \
     -p 8000:8000 \
     -p 8443:8443 \
     -p 8001:8001 \
     -p 8444:8444 \
     king-kong:latest`

5. In your browser:
  `http://localhost:8000/web`
