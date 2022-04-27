
#!/bin/bash
echo
echo "LAST COMMMAND"
echo
echo "[1] nano LAST_COMMAND"
echo "[2] print 'echo LAST_COMMAND'"
echo "[3] echo LAST_COMMAND | xclip"
echo
read myanswer
if [ "$myanswer" = "3" ]; then
  last_command.sh | xclip
  last_command.sh | clip.exe 
  echo
  echo "$(last_command.sh) | xclip COPIED"
  echo
fi
