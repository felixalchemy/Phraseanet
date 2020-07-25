## Prerequisites
To install Phraseanet, you must first install Docker software.
- [docker](https://docs.docker.com/get-docker/) >= v18.01-ce
- [docker-compose](https://docs.docker.com/compose/install/) >= v1.25.4

Note about elasticsearch container 
Check this link
https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker-prod-prerequisites

## Get started

You should review the default env variables defined in `.env` file.
Use `export` to override these values.

i.e:
```bash
export PHRASEANET_DOCKER_TAG=latest
export INSTALL_ACCOUNT_EMAIL=foo@bar.com
export INSTALL_ACCOUNT_PASSWORD=$3cr3t!
export PHRASEANET_APP_PORT=8082
```

### Using a env.local (custom .env)

It may be easier to deal with a local file to manage our env variables.

You can add your `env.local` at the root of this project and define a command function in your `~/.bashrc`:

```bash
# ~/.bashrc or ~/.zshrc
function dc() {
    if [ -f env.local ]; then
        env $(cat env.local | grep -v '#' | tr '\n' ' ') docker-compose $@
    else
        docker-compose $@
    fi
}
```

### Running the application

If you are not interested in the development of Phraseanet, you can ignore everything in `.env` after the `DEV Purpose` part.

    docker-compose -f docker-compose.yml up -d

Why this option `-f docker-compose.yml`?
The development and integration concerns are separated using a `docker-compose.override.yml`. By default, `docker-compose` will include this files if it exists.
If you don't work on phraseanet development, avoiding this `-f docker-compose.yml` parameters will throw errors. So you have to add this options on every `docker-compose` commands to avoid this inclusion.

> You can also delete the `docker-compose.override.yml` to get free from this behavior.

#### Running workers

```bash
docker-compose -f docker-compose.yml run --rm worker <command>
```

Where `<command>` can be:

- `bin/console worker:execute -m 2` (default)
- `bin/console task-manager:scheduler:run`
- ...

The default parameters allow you to reach the app with : `http://localhost:8082`

### Use Phraseanet images from docker hub

Retrieve on Docker hub prebuilt images for Phraseanet.

https://hub.docker.com/r/alchemyfr/phraseanet-fpm

https://hub.docker.com/r/alchemyfr/phraseanet-worker

https://hub.docker.com/r/alchemyfr/phraseanet-nginx

https://hub.docker.com/repository/docker/alchemyfr/phraseanet-db

https://hub.docker.com/repository/docker/alchemyfr/phraseanet-elasticsearch



To use them and not build the images locally, we advise to override the properties in file: env.local

```bash
# Registry from where you pull Docker images
PHRASEANET_DOCKER_REGISTRY=alchemyfr
# Tag of the Docker images
PHRASEANET_DOCKER_TAG=
```
or 

Pull images before launch docker-compose

#### Tag organisation on docker hub 


```latest``` : latest stable version

```4.0``` : latest stable version in 4.0

```4.1``` : latest stable version in 4.1

```4.1.1``` : Phraseanet version 4.1.1