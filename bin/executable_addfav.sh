echo
#echo "Titel:"
#read myfav
myfav=$(kodi_is_playing.sh 30)
echo "add: $myfav"
echo $myfav >> my_favorites
echo DONE
echo
