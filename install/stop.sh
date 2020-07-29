#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source $SCRIPT_DIR/installFunctions.sh

display_title "Stop Phraseanet app"

cd $SCRIPT_DIR
cd ..

sg docker "docker-compose stop"

