# Docker dockerpritunl

## Getting Started

### Prerequisites

What things you need to install the software and how to install them

```
apt-get update && apt-get upgrade -y
```
```
apt-get install docker docker-compose git
```
```
git clone https://github.com/LaktionovCC/dockerpritunl
```

### Installing

A step by step series of examples that tell you how to get a development env running


```
cd dockerpritunl
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
