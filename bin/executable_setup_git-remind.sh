################## GIT REMIND
cd $HOME; echo
echo GIT REMIND
sleep 3
mkdir git-remind
cd git-remind
echo
wget https://github.com/suin/git-remind/releases/download/v1.1.1/git-remind_1.1.1_Linux_x86_64.tar.gz
tar xf git-remind_1.1.1_Linux_x86_64.tar.gz
git config --global remind.paths '/setup,$HOME,/volume2/hugo'
#git config --global remind.paths '$HOME/*,/setup/*,/volume2/docker_final/setup_new/*,/volume2/docker/utils/*,/root/*,/volume2/docker_final/jdownloader'
sleep 3
echo
echo
#echo RCLONE ROOT_TAR BEGINNT
#echo
#sleep 5
#rclone copy gdsec:root_tar / -P -v --max-depth 1  --fast-list --skip-links
#cd /
#tar xf *root*.xz
#echo
#echo RCLONE TAR ENDE
#echo
#sleep 5
#rclone sync path: /usr/local/bin -P -v --skip-links --fast-list 
#cd /volume2/docker/utils
#mv path path_old
#git clone git@github.com:abraxas678/path.git
