
#!/bin/bash
source $HOME/bin/ts.sh
source $HOME/bin/name.dat
echo
XZ_OPT=-9 tar --exclude="*/.git" --exclude="*/#recycle" -Jcvf zipme-$name-$ts.tar.xz .
echo
echo zipme-$name-$ts.tar.xz DONE
echo
rclone move zipme-$name-$ts.tar.xz snas:backup/docker/zipme -P -v


