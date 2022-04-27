
#!/bin/bash
source $HOME/bin/ts.sh
source name.dat
source color.dat
printf "${BLUE1}"
echo
echo "BACKUP - $name - $PWD"
printf "${BLUE3}"
echo
echo "XZ_OPT=-9 tar --exclude="*/.git" -Jcvf $ts-$name-bbb.tar.xz ."
echo
XZ_OPT=-9 tar --exclude="*/.git" -Jcvf $ts-$name-bbb.tar.xz .
echo
printf "${YELLOW}"
echo DONE
echo
printf "${BLUE2}"
echo "rclone move ./$ts-$name-bbb.tar.xz snas:backup/bbb/ -Pv --max-depth 1 --skip-links --fast-list"
echo
rclone move ./$ts-$name-bbb.tar.xz snas:backup/bbb/ -Pv --max-depth 1 --skip-links --fast-list
echo 
gotify.sh "bbb done" " " 5
printf "${NC}"

