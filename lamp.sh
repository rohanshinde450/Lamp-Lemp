##LAMP START

sudo apt-get update -y
sudo apt-get install apache2 mysql-server php php8.3-fpm -y
sudo service apache2 restart
sudo service mysql restart
sudo service php8.3-fpm restart
cd /var/www/html
sudo touch hello.html hy.php
echo "Hello World" | sudo tee hello.html
echo "<?php phpinfo(); ?>" | sudo tee hy.php

sudo a2enmod proxy_fcgi setenvif
sudo service apache2 restart
sudo a2enconf php8.3-fpm
sudo service apache2 restart

##LAMP STOP

sudo apt-get remove apache2 mysql-server php php8.3-fpm -y
cd /var/www/html
sudo rm hello.html hy.php
