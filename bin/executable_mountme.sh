  sudo mkdir /mnt/t &>/dev/null
  sudo mkdir /volume1 &>/dev/null
  sudo mkdir /volume1/sec &>/dev/null
  sudo mkdir /volume1/backup &>/dev/null
  sudo mkdir /volume1/docker &>/dev/null
  sudo mkdir /volume1/supersec &>/dev/null
  sudo mkdir /volume2 &>/dev/null
  sudo mkdir /volume2/web &>/dev/null
  sudo mkdir /volume2/downloads2 &>/dev/null
  sudo mkdir /volume2/cloudhq &>/dev/null
  sudo mkdir /volume2/traefik &>/dev/null
#  sudo mount -t drvfs T: /mnt/t &>/dev/null
#  sudo mount -t drvfs T: /volume2 &>/dev/null
#  sudo mount -t drvfs T: /volume1 &>/dev/null
  sudo mount -t nfs 192.168.86.29:volume2/cloudhq /volume2/cloudhq -o nolock
  sudo mount -t nfs 192.168.86.29:volume2/docker /volume2/docker -o nolock
  sudo mount -t nfs 192.168.86.29:volume2/web /volume2/web -o nolock
  sudo mount -t nfs 192.168.86.29:volume2/traefik /volume2/traefik -o nolock
  sudo mount -t nfs 192.168.86.29:volume2/docker_final /volume2/docker_final -o nolock
  sudo mount -t nfs 192.168.86.29:volume2/downloads2 /volume2/downloads2 -o nolock
  sudo mount -t nfs 192.168.86.29:volume1/sec /volume1/sec -o nolock
  sudo mount -t nfs 192.168.86.29:volume1/backup /volume1/backup -o nolock
  sudo mount -t nfs 192.168.86.29:volume1/supersec /volume1/supersec -o nolock &>/dev/null
sh $HOME/bin/check_network.sh
