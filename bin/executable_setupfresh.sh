#!/bin/bash
sudo apt install git curl nfs-common -y
git config --global user.email abraxas678@gmail.com
git config --global user.name abraxas678
echo
sudo mkdir /volume1
sudo mkdir /volume1/sec
sudo service rpcbind start
sudo service nfs-common start
sudo mount -t nfs 192.168.86.29:volume1/sec /volume1/sec
ln /volume1/sec/sshkeys/id_rsa $HOME/.ssh/id_rsa -s
echo
cd $HOME/.ssh
eval `ssh-agent -s`
sudo chmod 0400 id_rsa
ssh-add id_rsa
cd $HOME
git clone git@github.com:abraxas678/dotfiles.git

echo; cd $HOME
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"^
curl -L git.io/antigen > antigen.zsh

sudo cp $HOME/dotfiles/.zshrc $HOME/
sudo cp $HOME/dotfiles/.p10k.zsh $HOME/
$HOME/dotfiles/bin/rclone_secure_setup.sh
rclone move $HOME/dotfiles/bin $HOME/bin -P -v

