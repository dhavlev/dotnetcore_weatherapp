#!/bin/bash

#./dotnetstart.sh -D
#status=$?
#if [ $status -ne 0 ]; then
#  echo "Failed to start my_second_process: $status"
#  exit $status
#fi 

./apachestart.sh #-D
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start my_first_process: $status"
  exit $status
fi

./dotnetstart.sh #-D
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start my_second_process: $status"
  exit $status
fi
