#!/bin/bash

# executable path
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
TANK_DIR=$(dirname $DIR)
EXE_PATH=$TANK_DIR/tank


if [ -f "$EXE_PATH" ]; then
 nohup $EXE_PATH >/dev/null 2>&1 &
 echo 'Start tank successfully!'
else
 echo 'Cannot find $EXE_PATH.'
 exit 1
fi
