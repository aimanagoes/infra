#!/bin/bash
curl https://raw.githubusercontent.com/aimanagoes/infra/main/sql.sh --output sql.sh
chmod +x sql.sh
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common php-cli unzip phpunit -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt install docker-ce -y
sudo usermod -aG docker ${USER}
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install -y nodejs
sudo apt install build-essential -y
sudo npm install pm2 -g --unsafe-perm=true --allow-root
cd ~
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
exit
