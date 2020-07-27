#!/bin/bash

DOCKER_SEMVER_REQUIRED="18.01"
DOCKER_COMPOSE_SEMVER_REQUIRED="1.25.4"

source install/install_fn.sh

# docker version check
display_title "Docker installation check"
DOCKER_VERSION=`docker -v 2>/dev/null`
DOCKER_SEMVER=`echo $DOCKER_VERSION | egrep -o '[0-9]+\.[0-9]+\.[0-9]'`
if [[ -z $DOCKER_SEMVER ]]; then
    echo "Docker not detected.";

    if [[ -z $NO_PROMPT ]]; then
      read -p "Install Docker ? (y/n) " -n 1 -r
      echo
    else
      REPLY=y
    fi

    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "Install Docker (root rights require)..."
        wget -qO- https://get.docker.com/ | sh

        DOCKER_VERSION=`docker -v 2>/dev/null`
        DOCKER_SEMVER=`echo $DOCKER_VERSION | egrep -o '[0-9]+\.[0-9]+\.[0-9]'`
        if [[ -z $DOCKER_SEMVER ]]; then
          echo "Docker installation failed, please install manually.";
          exit 0
        fi
echo "usermod..."
        sudo usermod -aG docker "$USER"
echo "newgrp..."
#        newgrp docker
    else
        echo "exit."
        exit 0
    fi
else
  echo 'Docker version detected: '$DOCKER_SEMVER
  semver_comp $DOCKER_SEMVER $DOCKER_SEMVER_REQUIRED
  if [ $? == "2" ]; then
    echo 'Docker version required: '$DOCKER_SEMVER_REQUIRED
    echo 'Please manually upgrade Docker to "$DOCKER_SEMVER_REQUIRED" version or earlier.'
    exit 0
  else
    echo "Docker version OK"
  fi
fi
echo "docker-compose..."
# docker-compose version check
display_title "Docker-compose installation check"
DOCKER_COMPOSE_VERSION=`docker-compose -v 2>/dev/null`
DOCKER_COMPOSE_SEMVER=`echo $DOCKER_COMPOSE_VERSION | egrep -o '[0-9]+\.[0-9]+\.[0-9]'`
if [[ -z $DOCKER_COMPOSE_SEMVER ]]; then
    echo "Docker-compose not detected.";

    if [[ -z $NO_PROMPT ]]; then
      read -p "Install Docker-compose v"$DOCKER_COMPOSE_SEMVER_REQUIRED"? (y/n) " -n 1 -r
      echo
    else
      REPLY=y
    fi

    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "Install docker-compose (root rights require)..."
        sudo sh -c "curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_SEMVER_REQUIRED}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
        sudo chmod +x /usr/local/bin/docker-compose
    else
        echo "exit."
        exit 0
    fi

else
  echo 'Docker-compose version detected: '$DOCKER_COMPOSE_SEMVER
  semver_comp $DOCKER_COMPOSE_SEMVER $DOCKER_COMPOSE_SEMVER_REQUIRED
  if [ $? == "2" ]; then
    echo "Docker-compose version required: "$DOCKER_COMPOSE_SEMVER_REQUIRED
    echo "Please manually upgrade Docker-compose to "$DOCKER_COMPOSE_SEMVER_REQUIRED" version or earlier."
    exit
  else
    echo "Docker-compose version OK"
  fi
fi
