# Docker portainer

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

```
apt-get update && apt-get upgrade -y
```
```
apt-get install docker docker-compose git
```
```
https://github.com/LaktionovCC/dockerportainer
```

### Installing

A step by step series of examples that tell you how to get a development env running

Say what the step will be

```
cd dockerportainer
```
```
docker-compose build
```
```
docker-compose up -d
```


Get credentials

```
docker exec -it docker-pritunl_pritunl_1 pritunl default-password
```
