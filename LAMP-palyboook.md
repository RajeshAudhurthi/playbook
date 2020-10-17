## LAMP installation
sudo apt update or sudo apt-get update
sudo apt install apache2 -y
sudo apt install php libapache2-mod-php php-mysql -y
sudo systemctl restart apache2
sudo nano /var/www/html/info.php
--
<?php
phpinfo();
?>
---


