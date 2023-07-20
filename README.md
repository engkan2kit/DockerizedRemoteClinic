Remote CLinic Dockerized

## Clone

RemoteClinic is a submodule of this project, so a recursive clone or git submodule command is needed.

```
git clone https://github.com/engkan2kit/RemoteClinicDockerized.git
cd RemoteClinicDockerized
git submodute update --init
```

## Environment Setup

An *`.env.example`* is included for the environment variables used by the project. Copy this file and name it as *`.env`* and replace the values of the variables with the actual values you will use in your setup.

## Running Docker

### start docker as a daemon

```
docker compose -f docker-compose.yml -f docker-compose-local.yml up -d
```

## Using Remote Clinic

Use the default user and password for the remote clinic. For example:

**User:** <admin@domain.ext>
**Password:** remoteclinic

## Other Useful Docker Commands

### To stop your all docker services

```
docker compose -f docker-compose.yml -f docker-compose-local.yml down
```

### To rebuild a specific service

```
docker compose -f docker-compose.yml -f docker-compose-local.yml build --no-cache <service>
```

For example to rebuild nginx if you change the dockerfile and ini:

```
docker compose -f docker-compose.yml -f docker-compose-local.yml build --no-cache nginx
```

## Tunnel

If you want your web server accessible outside your network temporarily, use tunneling services like ngrok or [localtunnel](https://github.com/localtunnel/localtunnel). I prefer localtunnel because it is free.

### Install localtunnel

### requirements

Install:

> node
> npm
> Install Tunnelme

```
npm install -g localtunnel
```

### Using localtunnel

You need to supply a string if you want a custom sudomain.

```
lt --port 80 --subdomain <subdomain>
```

For example

```
lt --port 80 --subdomain dockerizedclinic
```

Will give you a domain name.

> <https://dockerizedclinic.loca.lt>

You will have to open this link from time to time and follow localtunnels instructions.
