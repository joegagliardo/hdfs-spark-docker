#! /bin/sh
cd ~
git clone https://github.com/joegagliardo/hdfs-spark-docker.git
apt update
apt install net-tools apt-transport-https curl gnupg-agent ca-certificates software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
apt install docker-ce docker-ce-cli containerd.io docker-compose -y
sudo usermod -aG docker $USER
newgrp docker
systemctl start docker
systemctl enable docker
cd ~/hdfs-spark-docker
docker-compose up -d
