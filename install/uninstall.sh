#!/bin/bash

uninstall_package ()
{
  dpkg -s $1 &> /dev/null

  if [ $? -eq 0 ]; then
      echo "Removing package "$1"..."
      sudo apt-get purge -y $1
      sudo apt-get autoremove -y --purge $1
  fi
}

uninstall_phraseanet_app ()
{
  if grep -q docker /etc/group
    then
      sg docker "docker-compose down --rmi all -v"
      sg docker "docker rmi local/phraseanet-worker:latest"
      sg docker "docker rmi local/phraseanet-elasticsearch:latest"
      sg docker "docker rmi local/phraseanet-fpm:latest"
      sg docker "docker rmi local/phraseanet-nginx:latest"
      sg docker "docker rmi local/phraseanet-db:latest"
  fi

}
uninstall_docker ()
{
  # stop docker service
  if service --status-all | grep -Fq 'docker'; then
    sudo service docker stop
  fi

  # remove docker engine and docker-compose
  DOCKER_COMPOSE_PATH=`which docker-compose 2>/dev/null`
  if [[ -n $DOCKER_COMPOSE_PATH ]]; then
    sudo rm $DOCKER_COMPOSE_PATH
  fi

  uninstall_package docker-engine
  uninstall_package docker
  uninstall_package docker.io
  uninstall_package docker-ce
  uninstall_package docker-ce-cli

  #sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli
  #sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce

  if [[ -e /var/lib/docker ]]; then
    sudo rm -rf /var/lib/docker
  fi

  if [[ -e /etc/docker ]]; then
    sudo rm -rf /etc/docker
  fi

  if [[ -e /etc/apparmor.d/docker ]]; then
    sudo rm /etc/apparmor.d/docker
  fi

  if grep -q docker /etc/group
    then
      sudo groupdel docker
  fi

  if [[ -e /var/run/docker.sock ]]; then
    sudo rm -rf /var/run/docker.sock
  fi

}

read -p "Uninstall Phraseanet app ? (y/n) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    uninstall_phraseanet_app
else
    echo "exit."
    exit 0
fi

read -p "Uninstall Docker and docker-compose ? (y/n) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    uninstall_docker
else
    echo "exit."
    exit 0
fi

read -p "Uninstall Git ? (y/n) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    uninstall_package git
else
    echo "exit."
    exit 0
fi

read -p "Uninstall Phraseanet sources ? (y/n) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  FULL_SCRIPT_PATH=$PWD/$BASH_SOURCE
  FULL_SCRIPT_DIRECTORY=${FULL_SCRIPT_PATH%/*}
  cd $FULL_SCRIPT_DIRECTORY
  cd ..
  cd ..
  ##
  # Exit if "Phraseanet" directory not exit
  #
  if [[ ! -d "Phraseanet" ]]; then
    echo "Can't locate Phraseanet root in \"$PWD\". Exit..."
    exit 0
  else
    rm -rf ./Phraseanet
  fi
else
    echo "exit."
    exit 0
fi