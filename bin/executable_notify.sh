#!/bin/bash
mytitle=$1
mytext=$2%20$3%20$4%20$5%20$6%20$7%20$8%20$9
send.sh $mytitle $mytext
sendtv.sh $mytitle $mytext
say.sh $mytitle
echo "$mytitle $mytext" > $HOME/bin/mainline.dat

