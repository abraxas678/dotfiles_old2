mytext=http://google.com?q="$1%2B$2%2B$3%2B$4%2B$5%2B$6%2B$7%2B$8%2B$9"
echo $mytext
#sleep 2
open.sh $mytext
#curl -X POST -H "Content-Type: application/json" -d '{"myvar1":"foo","myvar2":"bar","myvar3":"foobar"}' "https://joinjoaomgcd.appspot.com/_ah/api/messaging/v1/sendPush?apikey=304c57b5ddbd4c10b03b76fa97d44559&deviceNames=Chrome&url=$server:$port"
