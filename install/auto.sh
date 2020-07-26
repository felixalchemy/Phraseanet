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

display_title "Git installation check"
git --version 2>&1 >/dev/null
GIT_IS_AVAILABLE=$?
# ...
if [ $GIT_IS_AVAILABLE -eq 0 ];
then
  echo "Install git (root rights require)..."
  sudo sudo apt-get install git
else
  echo "Git installation ok."
fi

display_title "Clone repository"
git clone https://github.com/felixalchemy/Phraseanet.git

cd Phraseanet

bash install/installPhraseanet.sh