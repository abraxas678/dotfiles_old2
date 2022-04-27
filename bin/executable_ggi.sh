
#!/bin/bash
echo
echo "ADD TO LOCAL .GITIGNORE"
echo
printf "Phrase to add: "; read myphrase 
echo
echo "adding $myphrase"
echo 
echo "$myphrase" >> .gitignore
echo
echo DONE
echo
cat .gitignore
echo
