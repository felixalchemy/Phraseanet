#!/bin/bash

uninstall_PhraseanetApp ()
{
  docker-compose down --rmi all -v
  docker rmi local/phraseanet-worker:latest
  docker rmi local/phraseanet-elasticsearch:latest
  docker rmi local/phraseanet-fpm:latest
  docker rmi local/phraseanet-nginx:latest
  docker rmi local/phraseanet-db:latest
}
uninstall_docker ()
{
  #docker system prune
  sudo service docker stop
  # remove docker-compose
  sudo rm $(which docker-compose)
  # remove docker engine
  sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli
  sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce
  sudo rm -rf /var/lib/docker /etc/docker
  sudo rm /etc/apparmor.d/docker
  sudo groupdel docker
  sudo rm -rf /var/run/docker.sock
}

read -p "Uninstall Phraseanet app ? (y/n) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    uninstall_PhraseanetApp
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


