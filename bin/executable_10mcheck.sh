#!/bin/bash
#ts=$(date +"%s")
bash /var/services/homes/abraxas678/bin/notify.sh "10mcheck.sh executed"
result=$(ps aux | grep "/usr/local/bin/wscat -c" | wc -l)
if [[ $result -lt "2" ]]; then
  echo
  echo "ps aux | grep "/usr/local/bin/wscat -c" | wc -l --> $result"
  echo
  sh /var/services/homes/abraxas678/bin/notify.sh "wscat was not running ... starting now"
#  nohup bash /var/services/homes/abraxas678/bin/gotify_wscat.sh > /dev/null &
  source /var/services/homes/abraxas678/bin/gotify_wscat.sh
fi
date >> 10mcheck.dat
