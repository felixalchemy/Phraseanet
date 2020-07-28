#!/bin/bash
# set vm.max_map_count value for ElasticSearch
# see https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker-prod-prerequisites
display_title "vm.max_map_count value check"
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
else
  echo "vm.max_map_count = "$VM_MAX_MAP_COUNT
  echo "vm.max_map_count value OK."
fi

VM_MAX_MAP_COUNT=`sysctl --values --ignore vm.max_map_count`
if [[ "$VM_MAX_MAP_COUNT" != "262144" ]]; then

  echo "Can't set vm.max_map_count value to "$VM_MAX_MAP_COUNT". Please set it manually"
  exit 0
fi