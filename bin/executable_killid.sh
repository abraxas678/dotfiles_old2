
#!/bin/bash
ps aux | grep $1 | while read a b c d e f g h i j k; do 
echo "kill $k  -->  $b"
echo "kill $b"
kill $b &>/dev/null
sleep 1
done
