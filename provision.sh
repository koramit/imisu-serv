# add mariadb repository
sudo apt-get install software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/ubuntu xenial main'

# add php 7.1 repository
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:ondrej/php

# update all repositories
sudo apt-get update

# mariadb install without GUI
sudo apt-get install -y debconf-utils
sudo debconf-set-selections <<< 'mariadb-server-10.2 mysql-server/root_password password imisu@serv'
sudo debconf-set-selections <<< 'mariadb-server-10.2 mysql-server/root_password_again password imisu@serv'
sudo apt-get install -y mariadb-server

# rsync
sudo apt-get install -y rsync

# nginx
sudo apt-get install -y nginx

# git
sudo apt-get install -y git

# php 7.1 with Laravel dependencies
sudo apt-get install -y php7.1-fpm php7.1-mysql php7.1-curl php7.1-zip php7.1-mbstring php7.1-xml

# composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# update again for dependency changed
sudo apt-get update

# imagemagick for Image processing
sudo apt-get install -y imagemagick
sudo apt-get install -y php-imagick
sudo systemctl reload php7.1-fpm

# ghostscript for PDF processing
sudo apt-get install -y ghostscript

# Create laravel-server-example server block, when finish we should access
# 192.168.11.11 on host and see MariaDB version and PHP info
sudo cp /var/www/laravel-server-example /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/laravel-server-example /etc/nginx/sites-enabled/
sudo rm /etc/nginx/sites-enabled/default
sudo systemctl reload nginx
