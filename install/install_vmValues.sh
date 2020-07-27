#!/bin/bash
# set vm.max_map_count value for ElasticSearch
# see https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker-prod-prerequisites
display_title "Set vm.max_map_count new value"
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