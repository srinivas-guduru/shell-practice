#!/bin/bash

echo "All args passed to script: $@"
echo "Number of vars passed to script: $@"
echo "Script name: $0"
echo "Present directory: $PWD"
echo "Who is running: $USER"
echo "Home directory of current user: $HOME"
echo "PID of this script: $$"
Sleep 100 &
echo "PID of recently excuted background process: $!"
echo "All args passed to script: $*"
