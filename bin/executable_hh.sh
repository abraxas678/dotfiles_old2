#!/bin/bash
echo
if [[ $2 = "s" ]]; then
  echo "sudo $1.sh"
  sudo $1.sh
else
  echo "$1.sh"
  res=$($1.sh)
  echo $res
fi
