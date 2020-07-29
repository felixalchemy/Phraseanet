# Phraseanet installation for power users

### Prerequisites

- [docker](https://docs.docker.com/get-docker/) (≥ v18.01-ce)
- [docker-compose](https://docs.docker.com/compose/install/) (≥ v1.25.4)

Note about elasticsearch container :
[check this link](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker-prod-prerequisites)

### Settings

You should review the default env variables defined in `.env` file.
Use `export` to override these values :
```bash
export PHRASEANET_DOCKER_TAG=latest
export INSTALL_ACCOUNT_EMAIL=foo@bar.com
export INSTALL_ACCOUNT_PASSWORD=$3cr3t!
export PHRASEANET_APP_PORT=8082
```
> Everything after the `DEV Purpose` part in `.env` file is dedicated to development mode, ignore it.
>
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
```bash
docker-compose -f docker-compose.yml up -d
```
Why this option `-f docker-compose.yml`? [Check this link.](https://devilbox.readthedocs.io/en/latest/configuration-files/docker-compose-override-yml.html)

#### Running workers

```bash
docker-compose -f docker-compose.yml run --rm worker <command>
```

Where `<command>` can be:

- `bin/console worker:execute -m 2` (default)
- `bin/console task-manager:scheduler:run`
- ...

### Build note

To not build the images locally, retrieve prebuilt images for Phraseanet on Docker hub :

 - [phraseanet-fpm](https://hub.docker.com/r/alchemyfr/phraseanet-fpm)
 - [phraseanet-worker](https://hub.docker.com/r/alchemyfr/phraseanet-worker)
 - [phraseanet-nginx](https://hub.docker.com/r/alchemyfr/phraseanet-nginx)
 - [phraseanet-db](https://hub.docker.com/repository/docker/alchemyfr/phraseanet-db)
 - [phraseanet-elasticsearch](https://hub.docker.com/repository/docker/alchemyfr/phraseanet-elasticsearch)

We advise to override the properties in file: env.local

```bash
# Registry from where you pull Docker images
PHRASEANET_DOCKER_REGISTRY=alchemyfr
# Tag of the Docker images
PHRASEANET_DOCKER_TAG=
```
or 

Pull images before launch docker-compose

#### Tag organisation on docker hub 

 - `latest` : latest stable version
 - `4.0` : latest stable version in 4.0
 - `4.1` : latest stable version in 4.1
 - `4.1.1` : Phraseanet version 4.1.1
