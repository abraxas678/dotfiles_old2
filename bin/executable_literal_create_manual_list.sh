echo
echo "name of list:"
read mylist
x=1
while [ $x = 1 ];do
echo
echo "name to add:"
read addme
echo
echo $addme >> $mylist
cat $mylist
done

