## LAMP installation Manually
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

## converting into ansible module


```
    - name: update and installing apache2
      apt:
        name: apache2
        state: present
        update_cache: yes
    - name: installing packages
      apt:
        name: ["php", "libapache2-mod-php", "php-mysql"]
        state: present
    - name: restart apache2
      service:
        name: apache2
        state: restarted
