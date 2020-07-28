#!/bin/bash

ABSOLUTE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ABSOLUTE_DIR/installFunctions.sh

display_title "Stop Phraseanet app"
sg docker "docker-compose stop"

