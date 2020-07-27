#!/bin/bash

ABSOLUTE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

source $ABSOLUTE_DIR/install_fn.sh

source $ABSOLUTE_DIR/install_vmValues.sh

source $ABSOLUTE_DIR/installDocker.sh

source $ABSOLUTE_DIR/start.sh



