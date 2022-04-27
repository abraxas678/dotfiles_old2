#!/bin/bash
#source line
#echo "a==================================================================" > $HOME/bin/mainline2.dat
echo "" > $HOME/bin/mainline2.dat
#echo " " >> $HOME/bin/mainline2.dat
#task +OVERDUE list | head -n5 | sed 's/.*Urg//' | sed 's/.*----//' >> $HOME/bin/mainline2.dat
#task | head -n5 >> $HOME/bin/mainline2.dat
#echo " " >> $HOME/bin/mainline2.dat
#echo " " >> $HOME/bin/mainline2.dat
sed -i '/^$/d' $HOME/bin/mainline2.dat
echo " " >> $HOME/bin/mainline2.dat
