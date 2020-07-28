#!/bin/bash

ABSOLUTE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source $ABSOLUTE_DIR/install_fn.sh

display_title "Start Phraseanet app"

cd $ABSOLUTE_DIR
cd ..

# getting PHRASEANET_APP_PORT from .env
if [ -f .env ]; then
  OVERRIDE_ENV=`echo $(cat .env | grep -v '#' | tr '\n' ' ')`
  PHRASEANET_APP_PORT=`echo $OVERRIDE_ENV | grep -Eo 'PHRASEANET_APP_PORT=([0-9^w]*)' | cut -d'=' -f 2`
fi

if [ -f env.local ]; then
  OVERRIDE_ENV=`echo $(cat env.local | grep -v '#' | tr '\n' ' ')`
  sg docker "env $OVERRIDE_ENV docker-compose -f docker-compose.yml up -d"
  # getting PHRASEANET_APP_PORT from env.local
  PHRASEANET_APP_PORT=`echo $OVERRIDE_ENV | grep -Eo 'PHRASEANET_APP_PORT=([0-9^w]*)' | cut -d'=' -f 2`
else
  sg docker "docker-compose -f docker-compose.yml up -d"
fi

if [[ -n $PHRASEANET_APP_PORT ]]; then
  echo -e "\nPhraseanet is running on \e[38;5;198mhttp://localhost:"$PHRASEANET_APP_PORT"\e[0m\n"
fi

# newgrp docker

