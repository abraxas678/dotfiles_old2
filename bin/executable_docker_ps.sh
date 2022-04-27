
source color.dat 
homebase=$(homebase.sh)
i=1
sudo docker ps --format '{{ .ID }}\t{{.Names }}\t\t\t{{ .Image}}\t{{ .Status}}' | while read c1 c2 c3 c4 c5 c6 c7 c8 c9; do

sudo docker ps > testps
echo testps | grep $c2 
#while read $i; do
#port=$(awk '{print $11}' testps | sed 's/.*://g' | sed 's/->.*//g')
#rm testps
#echo $port
#done <testps

#c4=(sed 's/minutes,/min/g' <<<"$c4")
count=${#c3}
if [[ $count == 1 ]]
then 
  c3=0$c3
fi
#sudo echo $c1 > /$homebase/#tmp/$i
#echo count $c3 $count

####### 2. spalte, selbe länge
count=${#c2}
count2=$((33-$count))
#echo count2 $count2
x=1
while [ $x -le $count2 ]
do
  v1="."
  c2=$c2$v1
  x=$(($x+1))  
done
#echo c2 $c2
##################################



####### 3. spalte, selbe länge
count=${#c3}
count2=$((33-$count))
#echo count2 $count2
x=1
while [ $x -le $count2 ]
do
  v1="."
  c3=$c3$v1
  x=$(($x+1))
done
#echo c3 $c3
##################################
count=${#c7}
count2=$((13-$count))
#echo count2 $count2
x=1
while [ $x -le $count2 ]
do
  v1="."
  c7=$c7$v1
  x=$(($x+1))
done



count=${#i}
if [[ $count == 1 ]]
then
  b=0$i
else
  b=$i
fi

if [[ $c3 == *"ortainer"* ||  $c3 == *"emby"* ||  $c3 == *"rclone_mount_gd"* ||  $c3 == *"cron"* ||  $c3 == *"jdownloader"* ||  $c3 == *"ha_wifi"*     ]]
then
  printf ${GREY}
fi

if [[ $c7 == *"unhealthy"*  ]]
then
  printf ${RED}
fi

if [[ $c4 == *"estart"*  ]]
then
  printf ${LILA}
fi
#echo c4 $c4
#echo c5 $c5
#echo c6 $c6
#echo c7 $c7

#####################  PORT UEBER AWK

#docker ps > test
#port=$(awk '{print $11}' test | sed 's/.*://g' | sed 's/->.*//g')
#rm test

#####################################


echo $b $c1,"  ", $c2," ", $c3," ", $c4, $c5,$c6,  $c7
printf ${NC}

sudo docker port $c1 | grep tcp | sed 's/.*://'

i=$(($i+1))
##sed 's/minutes,/min/g' myps
#sed 's/hours,/hrs/g' myps

done
#sed 's/minutes,/min/g' myps > myps2
#sed 's/hours,/hrs/g' myps2 > myps3
#sed 's/,//g' myps3 
#rm myps
#rm myps2
#rm myps3

rm testps
