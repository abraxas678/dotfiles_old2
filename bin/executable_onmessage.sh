#!/bin/bash
echo
echo "onmessage.sh:"
echo 
echo $1
echo
all=$@

title="$(echo $all | jq -r .title)"
message="$(echo $all | jq -r .message)"

appid="$(echo $all | jq -r .appid)"
image=/home/abraxas678/bin/gotify_images/$appid.png

if [[ $title = *"start emby"* ]]; then
  cd /volume1/docker/main/emby
  docker-compose -f docker-compose.emby.yml up -d
  notify.sh "starting emby"
fi

priority="$(echo $all | jq -r .priority)"
if [[ $priority -lt 4 ]]; then
  urgency=low
elif [[ $priority -ge 4 ]] && [[ $prority -lt 7 ]]; then
  urgency=normal
elif [[ $priority -ge 7 ]]; then
  urgency=critical
  curl -L "https://maker.ifttt.com/trigger/pushover10/with/key/4q38KZvz7CwD5_QzdUZHq?value1=$title"
fi

echo "$title $message $priority $image"

#notify-send --urgency critical --app-name "Gotify" "${summary}" "${message}" > /dev/null 2>&1

source ts.sh
echo $ts >> onmessage.dat
