#!/bin/bash
source install/install_fn.sh

display_title "Stop Phraseanet app"
sg docker "docker-compose stop"

