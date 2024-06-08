#!/bin/bash

[ ! -x "./run-ab-platform.sh" ] && echo "run-ab-platform.sh not found in the current folder or not executable" && exit 1
[ -n "$1" ] && AB_LOG=$1 || AB_LOG=../airbyte_platform.log
touch $AB_LOG || echo "unable to touch $AB_LOG" || exit 2
echo "Logging to: $AB_LOG"
echo "Starting the platform"
nohup ./run-ab-platform.sh > $AB_LOG 2>&1 &  
