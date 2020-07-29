#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

source $SCRIPT_DIR/installFunctions.sh

source $SCRIPT_DIR/installVmValues.sh

source $SCRIPT_DIR/installDocker.sh

source $SCRIPT_DIR/start.sh



