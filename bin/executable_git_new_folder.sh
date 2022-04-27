#!/bin/bash
source $HOME/bin/name.dat
echo
echo GIT INIT
git init
echo
source $HOME/bin/line
echo "git remote add origin git@github.com:abraxas678"
git remote add origin git@github.com:abraxas678
echo
source $HOME/bin/line
echo "git remote set-url origin git@github.com:abraxas678/$name.git"
git remote set-url origin git@github.com:abraxas678/$name.git
echo
echo DONE

