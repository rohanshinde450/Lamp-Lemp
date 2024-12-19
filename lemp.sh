##LEMP START

sudo apt-get update -y
sudo apt-get install nginx mysql-server php php8.3-fpm -y
sudo service nginx restart
sudo service mysql restart
sudo service php8.3-fpm restart
cd /var/www/html
sudo touch rohan.html my.php
echo "Hello World" | sudo tee rohan.html
echo "<?php phpinfo(); ?>" | sudo tee my.php


##LEMP STOP

sudo apt-get remove nginx mysql-server php php8.3-fpm -y
cd /var/www/html
sudo rm rohan.html my.php

