# Phraseanet installation for development


### Prerequisites

- [docker](https://docs.docker.com/get-docker/) (≥ v18.01-ce)
- [docker-compose](https://docs.docker.com/compose/install/) (≥ v1.25.4)

Note about elasticsearch container :
[check this link](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker-prod-prerequisites)

### Usage

The development mode uses the `docker-compose-override.yml` file.
This adds the following additional software :

- PhPMyAdmin
- Xdebug
- Kibana
- LogStash
- FileBit

You can run it with:

    docker-compose up -d

The environment is not ready yet: you have to fetch all dependencies.

This can be made easily from the builder container:

    docker-compose run --rm -u app builder make install install_composer_dev

> Please note that the phraseanet image does not contain nor `composer` neither `node` tools. This allow the final image to be slim.
> If you need to use dev tools, ensure you are running the `builder` image!

### Developer shell

You can also obtain a shell access in builder container:

```bash
docker-compose run --rm builder /bin/bash
# or
docker-compose run --rm builder /bin/zsh
```

In this container you will have the same libraries (PHP, Node, composer, ...) that are used to build images.
Also you have utils for development like telnet, ping, ssh, git, ...
Your $HOME/.ssh directory is also mounted to builder's home with your ssh agent.

### Using Xdebug

Xdebug is enabled by default with the `docker-compose.override.yml`
You can disable it by setting:

```bash
export XDEBUG_ENABLED=0
```

Remote host is fixed because of the subnet network from compose.

You need to configure file mapping in your IDE.
For PhpStorm, you can follow this example:

![PhpStorm mapping](https://i.ibb.co/GMb43Cv/image.png)

> Configure the `Absolute path on the server` to `/var/alchemy/Phraseanet` at the project root path (i.e. `~/projects/Phraseanet`).

#### Xdebug on MacOS

You have to set the following env:
```bash
XDEBUG_REMOTE_HOST=host.docker.internal
```

> Don't forget to recreate your container (`docker-compose up -d phraseanet`)

### Build images with plugins

Plugins can be installed during build if you set the `PHRASEANET_PLUGINS` env var as follows:

```bash
PHRASEANET_PLUGINS="https://github.com/alchemy-fr/Phraseanet-plugin-expose.git"

# You can optionally precise the branch to install
# If not precised, the main branch will be pulled
PHRASEANET_PLUGINS="git@github.com:alchemy-fr/Phraseanet-plugin-webgallery.git(custom-branch)"

# Plugins are separated by semicolons
PHRASEANET_PLUGINS="git@github.com:foo/bar.git(branch-1);git@github.com:baz/42.git"
```

> Prefer the HTTPS URL for public repositories, you will not be required to provide your SSH key.

If you install private plugins, make sure you export your SSH private key content in order to allow docker build to access the GIT repository:
Also ensure you're using the SSH URL form (i.e: `git@github.com:alchemy-fr/repo.git`).
```bash
export PHRASEANET_SSH_PRIVATE_KEY=$(cat ~/.ssh/id_rsa)
# or if your private key is protected by a passphrase:
export PHRASEANET_SSH_PRIVATE_KEY=$(openssl rsa -in ~/.ssh/id_rsa -out /tmp/id_rsa_raw && cat /tmp/id_rsa_raw && rm /tmp/id_rsa_raw)
```
