#!/bin/bash
R="\e[31m"
N="\e[0m"
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl start docker
sudo systemctl enable docker
usermod -aG docker ec2-user
echo -e "$R Logout and Login again $N"

sudo growpart /dev/nvme0n1 4
sudo lvextend -L +20G /dev/RootVG/homeVol
sudo lvextend -L +10G /dev/RootVG/varVol

sudo xfs_growfs /home
sudo xfs_growfs /var