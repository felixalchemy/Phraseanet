#!/bin/bash

source install/install_fn.sh

source install/install_vmValues.sh

source install/installDocker.sh

display_title "Docker-compose Phraseanet"
if [ -f env.local ]; then
  OVERRIDE_ENV=`echo $(cat env.local | grep -v '#' | tr '\n' ' ')`
  env $OVERRIDE_ENV docker-compose -f docker-compose.yml up -d
  #$OVERRIDE_ENV docker-compose -f docker-compose.yml up -d
  PHRASEANET_APP_PORT=`echo $OVERRIDE_ENV | grep -Eo 'PHRASEANET_APP_PORT=([0-9^w]*)' | cut -d'=' -f 2`
else
  docker-compose -f docker-compose.yml up -d
fi

if [[ -n $PHRASEANET_APP_PORT ]]; then
  echo -e "\nPhraseanet is running on \e[38;5;198mhttp://localhost:"$PHRASEANET_APP_PORT"\e[0m\n"
fi



