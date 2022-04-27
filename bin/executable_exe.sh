#!/bin/bash
source color.dat
printf "${RED}"
echo "<<<exe.sh>>>"
printf "${BLUE}"
source /usr/local/bin/setpw.sh
source name.dat
echo $PWD
name=${PWD##*/}
path=${PWD%/*}
counter=${#1}

if [[ $counter > 1 ]]; then
  name=$1
fi

docker exec -it $name sh
