## userdata 
   do something while launching the EC2 instance 
   ```
   #!/bin/bash
   sudo apt update
   sudo apt install apache2 -y
   sudo apt install php libapache2-mod-php php-mysql -y
   sudo systemctl restart apache2
   sudo echo "<?php phpinfo(); ?>" > /var/www/html/info.php
   ``` 
## EC2 instances start at 9:00 am and stop at 9:00 pm IST 
   * NOTE: __configure awscli__
    [click here for awscli configuration](https://github.com/ABBANAPURI0445/devops-aws/blob/master/AWS/AWS%20CLI/aws-clI.md)
   1. start ec2 machine using awscli 
      ```

      ```      aws ec2 start-instances --instance-ids i-02b67b732143e9213

   2. stop ec2 machine using awscli
      ```
      aws ec2 stop-instances --instance-ids i-02b67b732143e9213
      ```
   3. create task schedular(in windows) write cron job(in linux)
## terminate Ec2 instance
   ```
   aws ec2 terminate-instances --instance-ids i-054ca6378dc97d09b
   ```
## ASG (newUI)

   
   