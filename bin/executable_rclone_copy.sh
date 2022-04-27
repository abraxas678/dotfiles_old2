#!/bin/bash
ip=$(hostname)
v1=$1
if [[ ! $1 ]];then
  v1=1200
fi
echo v1 $v1
source ts.sh
mylastr=$(cat /volume2/docker/utils/rclone_backup)
mydiff=$((ts-mylastr))
echo mydiff $mydiff
if [[ $mydiff -gt $v1 ]]; then
  echo; echo rclone backup $v1; echo
#  cp ~/.bashrc ~/.config/bashrc
  echo
  echo "cp ~/.config/rclone/rclone.conf ./rclone__$ts.conf"
  cp ~/.config/rclone/rclone.conf ./rclone__$ts.conf
  echo
#  cp ~/.config/rclone/rclone.conf ./rclone__$ip.conf
#  rclone move . snas:sec/rclone/device --include rclone__$ip.conf --max-depth 1 -P --fast-list --skip-links
#  rclone copy ~/.config/rclone/ gdsec: --include rclone.conf --max-depth 1 -P --fast-list --skip-links
# rclone copy ~/.config/ snas:sec/config/ -P --fast-list --skip-links --max-depth 1
  echo
  echo "gpg --encrypt --armor -r amdamdes@mymails.cc rclone__$ts.conf"
  echo
  gpg --encrypt --armor -r amdamdes@mymails.cc rclone__$ts.conf
  rclone copy . snas:sec/rclone --include rclone__$ts.conf.asc --max-depth 1 -P --fast-list --skip-links
  rclone move . gd:sec/rclone --include rclone__$ts.conf.asc --max-depth 1 -P --fast-list --skip-links
  rm rclone__$ts.conf
  echo $ts > /volume2/docker/utils/rclone_backup
#  rclone copy snas:sec/rclone/ $HOME/.config/rclone/ --include rclone__$ip.conf --max-depth 1 -P --fast-list --skip-links
#  mv $HOME/.config/rclone/rclone__$ip.conf $HOME/.config/rclone/rlcone.conf
fi
