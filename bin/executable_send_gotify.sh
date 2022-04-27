#!/bin/bash
TITLE="My Title"
MESSAGE="Hello: ![](https://gotify.net/img/logo.png)"
PRIORITY=5
URL="http://192.168.86.29:8008/message?token=Ac-rhoMpKIxyNgv"

curl -s -S --data '{"message": "'"${MESSAGE}"'", "title": "'"${TITLE}"'", "priority":'"${PRIORITY}"', "extras": {"client::display": {"contentType": "text/markdown"}}}' -X POST -H Content-Type:application/json "$URL"
