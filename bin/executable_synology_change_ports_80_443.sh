#! /bin/bash
#execute on snas at boot

HTTP_PORT=80
HTTPS_PORT=443

sed -i "s/^\( *listen .*\)81/\1$HTTP_PORT/" /usr/syno/share/nginx/*.mustache
sed -i "s/^\( *listen .*\)444/\1$HTTPS_PORT/" /usr/syno/share/nginx/*.mustache
