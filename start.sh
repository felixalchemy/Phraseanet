#!/bin/bash

# administrator email account
INSTALL_ACCOUNT_EMAIL=foo@bar.com
# administrator password account
INSTALL_ACCOUNT_PASSWORD=$3cr3t!
# web app port (e.g. http://localhost:8082)
PHRASEANET_APP_PORT=8082
# docker tag
PHRASEANET_DOCKER_TAG=latest


# set vm.max_map_count value for ElasticSearch
# see https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker-prod-prerequisites
VM_MAX_MAP_COUNT=`sysctl --values --ignore vm.max_map_count`

if [[ "$VM_MAX_MAP_COUNT" != "262144" ]]; then

  echo "set vm.max_map_count value for ElasticSearch (root rights require)..."

  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
          # linux
          sudo sysctl -w vm.max_map_count=262144
  elif [[ "$OSTYPE" == "darwin"* ]]; then
          # Mac OSX
          # macOS with Docker Desktop
          # docker-machine ssh
          # sudo sysctl -w vm.max_map_count=262144
          echo "macOS"
  fi
fi

# launch docker-compose
env \
INSTALL_ACCOUNT_EMAIL=$INSTALL_ACCOUNT_EMAIL \
INSTALL_ACCOUNT_PASSWORD=$INSTALL_ACCOUNT_PASSWORD \
PHRASEANET_APP_PORT=$PHRASEANET_APP_PORT \
PHRASEANET_DOCKER_TAG=$PHRASEANET_DOCKER_TAG \
docker-compose -f docker-compose.yml up -d

echo -e "\nPhraseanet is running on \e[38;5;198mhttp://localhost:"$PHRASEANET_APP_PORT"\e[0m\n"
