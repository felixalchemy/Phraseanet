#!/bin/bash

display_title ()
{
  TITLE=" "$1" "
  LEN=${#TITLE}
  v=$(printf "%-${LEN}s" "─")

  echo "┌─${v// /─}─┐"
  echo '│'$TITLE'│'
  echo "└─${v// /─}─┘"
}

# get parameters
for i in "$@"
do
case $i in
    -nc|--no-confirm)
    NO_PROMPT=true
    shift # past argument=value
    ;;
    *)
          # unknown option
    ;;
esac
done

display_title "Git installation check"
GIT_VERSION=`git --version 2>/dev/null`
if [[ -z $GIT_VERSION ]]; then
    echo "Git not detected.";
    if [[ -z $NO_PROMPT ]]; then
      read -p "Install Git ? (y/n) " -n 1 -r
      echo
    else
      REPLY=y
    fi

    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "Install Git (root rights require)..."
        sudo sudo apt-get -y install git
    else
        echo "exit."
        exit 0
    fi
else
  echo "Git installation ok."
fi

display_title "Clone repository"
git clone https://github.com/felixalchemy/Phraseanet.git

cd Phraseanet

bash install/installPhraseanet.sh

# wget -qO - https://raw.githubusercontent.com/felixalchemy/Phraseanet/master/install/auto.sh -nc | bash
# wget -q https://raw.githubusercontent.com/felixalchemy/Phraseanet/master/install/auto.sh && bash auto.sh -nc