#!/bin/bash
eval $(ssh-agent)
####################################################################################
echo
echo $SSH_AUTH_SOCK
echo $SSH_AUTH_SOCK | clip.exe
echo
cp ~/setup/keepassxc.ini ~/.config/keepassxc/
echo
echo DO NOT CLOSE KEEPASSXC -- CHECK SETTINGS KEYS
echo "BUTTON 120 to open keepassxc"
echo
read -t 120 me
keepassxc &
echo
echo KEY WHEN DONE
echo
read me

