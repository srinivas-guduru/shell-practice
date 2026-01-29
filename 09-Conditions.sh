#!/bin/bash

NUMBER=$1

# -gt -> freater than
# -it -> less than
# -eq -> euqal
# -na -> not equal

if [ $NUMBER -gt 20 ]; then
    echo "Given number: $NUMBER is greater than 20"

fi 