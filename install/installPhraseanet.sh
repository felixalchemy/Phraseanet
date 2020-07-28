#!/bin/bash

ABSOLUTE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

source $ABSOLUTE_DIR/installFunctions.sh

source $ABSOLUTE_DIR/installVmValues.sh

source $ABSOLUTE_DIR/installDocker.sh

source $ABSOLUTE_DIR/start.sh



