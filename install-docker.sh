#! /bin/sh
apt update
apt install apt-transport-https curl gnupg-agent ca-certificates software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
apt install docker-ce docker-ce-cli containerd.io docker-compose -y
usermod -aG docker $USER
newgrp docker
systemctl start docker
systemctl enable docker
