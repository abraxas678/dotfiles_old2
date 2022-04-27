#!/bin/bash
source $HOME/bin/color.dat
printf "${BLUE1}"
$HOME/bin/echo_name.sh RCLONE BISYNC MAIN
if [[ $(whoami) = "root" ]];then
  printf "${RED}" ;echo YOU ARE ROOT; sleep 10; printf "${BLUE3}"
fi
printf "${BLUE3}" 
folder1=$HOME #dotfiles
#folder2=/volume1/docker
#folder3=/volume2/docker_final
#folder4=/usr/bin #mybins

printf "${BLUE2}"
echo 
echo "[folder1] [$folder1]" 
#echo "[folder2] [$folder2]" 
#echo "[folder3] [$folder3]" 
#echo "[folder4] [$folder4]"
echo 

#RCLONE_TEST check

firsttime=""

printf "${RED}"
if [[ ! -f $folder1/RCLONE_TEST ]];then
  echo "RCLONE_TEST does not exist in $folder1"
  firsttime="-1"
  touch $folder1/RCLONE_TEST
  rclone copy $folder1/RCLONE_TEST snas:rclone_bisync$folder1/ -P
fi
if [[ ! -f $folder2/RCLONE_TEST ]];then
  echo "RCLONE_TEST does not exist in $folder2"
  firsttime="-1"
  touch $folder2/RCLONE_TEST
  rclone copy $folder2/RCLONE_TEST snas:rclone_bisync$folder2/ -P
fi  
if [[ ! -f $folder3/RCLONE_TEST ]];then
  echo "RCLONE_TEST does not exist in $folder3"
  firsttime="-1"
  touch $folder3/RCLONE_TEST
  rclone copy $folder3/RCLONE_TEST snas:rclone_bisync$folder3/ -P
fi
if [[ ! -f $folder4/RCLONE_TEST ]];then
  echo "RCLONE_TEST does not exist in $folder4"
  firsttime="-1"
  touch $folder4/RCLONE_TEST
  rclone copy $folder4/RCLONE_TEST snas:rclone_bisync$folder4/ -P
fi

# rclone ls snas:rclone_bisync/home/abraxas678/RCLONE_TEST

echo; echo "firsttime = $firsttime"
printf "${YELLOW}"
myactivate="n"
echo; echo "ACTIVATE 1st RUN SYNC? (y/n)"
echo; read -n 1 -t 15 myactivate
if [[ $myactivate = "y" ]]; then
  firsttime="-1"
fi
echo; echo "firsttime = $firsttime"
echo
printf "${BLUE4}"
source $HOME/bin/ts.sh; echo
printf "${BLUE2}"
echo "rclone bisync $folder1 snas:rclone_bisync$folder1 --check-access  --filters-file $HOME/bin/rclone_bisync_filter.dat -P -v --skip-links --fast-list --max-delete 10 $firsttime --backup-dir snas:rclone_bisync/versioning --suffix $ts"
echo
printf "${BLUE3}"

myrun="n"
echo; echo "RUN ? (y/n)"
echo; read -n 1 -t 15 myrun
if [[ $myrun = "y" ]]; then
  rclone bisync $folder1 snas:rclone_bisync$folder1 --check-access  --filters-file $HOME/bin/rclone_bisync_filter.dat -P -v --skip-links --fast-list --max-delete 10 $firsttime --backup-dir snas:rclone_bisync/versioning --suffix $ts 
 # rclone bisync $folder2 snas:rclone_bisync$folder2 --check-access  --filters-file $HOME/bin/rclone_bisync_filter.dat -P -v --skip-links --fast-list --max-delete 10 $firsttime --backup-dir snas:rclone_bisync/versioning --suffix $ts 
 # rclone bisync $folder3 snas:rclone_bisync$folder3 --check-access  --filters-file $HOME/bin/rclone_bisync_filter.dat -P -v --skip-links --fast-list --max-delete 10 $firsttime --backup-dir snas:rclone_bisync/versioning --suffix $ts 
 # rclone bisync $folder4 snas:rclone_bisync$folder4 --check-access  --filters-file $HOME/bin/rclone_bisync_filter.dat -P -v --skip-links --fast-list --max-delete 10 $firsttime --backup-dir snas:rclone_bisync/versioning --suffix $ts 
#--dry-run
fi
echo



