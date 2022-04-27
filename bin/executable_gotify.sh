#!/bin/bash
#https://leffler.tech/2021/10/07/gotify-notify-bashrc/
#function gotify() {
  if [[ -z "$1"] || -z "$2" || -z "$3" ]]; then
    echo
    echo "Usage: gotify [title] [message] [priority]";
    echo
  else
    source $HOME/gotify.conf
    URL="${URL}/message?token=${TOKEN}"
    command=$(curl -s "${URL}" -F "title=${1}" -F "message=${2}" -F "priority=${3}" | jq '.id') && echo "Sent with ID: ${command}"
    curl -s "${URL}" -F "title=${1}" -F "message=${2}" -F "priority=${3}"
    unset URL; unset TOKEN
  fi
#}
