#!/bin/bash

NUMBER=$1

# -gt -> freater than
# -it -> less than
# -eq -> euqal
# -na -> not equal

if [ $NUMBER -gt 20 ]; then
    echo "Given number: $NUMBER is greater than 20"
elif [ $NUMBER -eq 20 ]; then
 echo "Given number: $NUMBER is equal to 20"

else
echo "GIven number: $NUMBER is less than 20"
fi
