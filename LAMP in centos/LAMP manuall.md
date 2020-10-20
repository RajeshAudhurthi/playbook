## LAMP server installation in CENTOS manually
1. search 'install lamp in centos'
2. select the first page in results
3. follow the documentation

## How To Install Linux, Apache, MySQL, PHP (LAMP) stack On CentOS 7
    1. Launch and login EC2 machine
    2. install the lamp through the above document
    3. Run the commands
        ```
        sudo yum install httpd -y
        sudo service httpd status
        or 
        sudo systemctl status httpd
        sudo systemctl start httpd.service
        http://your_server_IP_address/
        ```
    You will see the default CentOS 7 Apache web page, which is there for informational and testing purposes.
    If you see that page, then your web server is now correctly installed.
    The last thing you will want to do is enable Apache to start on boot. Use the following command to do so:
        ```
        sudo systemctl enable httpd.service
        sudo yum install php php-mysql
        sudo systemctl restart httpd.service
        sudo vi /var/www/html/info.php
            <?php phpinfo(); ?>
        http://your_server_IP_address/info.php
        ```
    This page basically gives you information about your server from the perspective of PHP. It is useful for debugging and to ensure that your settings are being applied correctly.
## Conclusion
Now that you have a LAMP stack installed, you have many choices for what to do next. Basically, you’ve installed a platform that will allow you to install most kinds of websites and web software on your server.

        
