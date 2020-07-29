#!/bin/bash

DOCKER_SEMVER_REQUIRED="18.01"
DOCKER_COMPOSE_SEMVER_REQUIRED="1.25.4"

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source $SCRIPT_DIR/installFunctions.sh

recover_source_list()
{
  # recover original source.list from backup
  if [[ -e $BKP_REPO_FILEPATH ]]; then
      sudo mv $REPO_FILEPATH{.$BKP_EXT,}
  fi
}
change_source_list()
{
  REPO_DIR=/etc/apt
  REPO_FILENAME=sources.list
  REPO_FILEPATH=$REPO_DIR/$REPO_FILENAME
  BKP_EXT=bkp
  BKP_REPO_FILENAME=$REPO_FILENAME.$BKP_EXT
  BKP_REPO_FILEPATH=$REPO_DIR/$BKP_REPO_FILENAME
  TMP_REPO_FILENAME=/tmp/$REPO_FILENAME

  # recover original source.list from backup
  recover_source_list

  # create backup
  sudo cp $REPO_FILEPATH $BKP_REPO_FILEPATH
  # create tmp file from original
  sudo cp $REPO_FILEPATH $TMP_REPO_FILENAME

  # add CR to the end of file if no CR present
  tail -c1 < "$TMP_REPO_FILENAME" | read -r _ || echo >> "$TMP_REPO_FILENAME"

  FIND="deb cdrom:"
  while read -r a; do
      echo ${a//$FIND/"#"$FIND}
  done < $TMP_REPO_FILENAME > $TMP_REPO_FILENAME.tmp
  sudo mv $TMP_REPO_FILENAME.tmp $TMP_REPO_FILENAME
  sudo mv $TMP_REPO_FILENAME $REPO_FILEPATH
}

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
        change_source_list
        wget -qO- https://get.docker.com/ | sh
        recover_source_list
        DOCKER_VERSION=`docker -v 2>/dev/null`
        DOCKER_SEMVER=`echo $DOCKER_VERSION | egrep -o '[0-9]+\.[0-9]+\.[0-9]'`
        if [[ -z $DOCKER_SEMVER ]]; then
          echo "Docker installation failed, please install manually.";
          exit 0
        fi
        #sudo usermod -aG docker "$USER"
        sudo gpasswd -a "$USER" docker
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