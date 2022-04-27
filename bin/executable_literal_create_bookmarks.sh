#!/bin/bash
echo
rclone copy "razer:Users/abrax/AppData/Roaming/Opera Software/Opera Stable" ~/work --include Bookmarks -P
cat Bookmarks | jq | grep 'name":\|url":' > filelist.txt
myfilename=$(cat filelist | head -n2 | grep name)
myurl=$(cat filelist | head -n2 | grep url)
echo
sleep 5
echo $myfilename
echo $myurl 
echo
cat filelist.txt | wc -l
sleep 5
sed "/$myfilename/d" filelist.txt
sed "/$myurl/d" filelist.txt
cat filelist.txt | wc -l
rm filelist.txt
