# Jenkins Master-Slave
## Master

    1. install jenkins server , login as root user `sudo -i`
    2. assign sudo permission `visudo`
        * add this line `jenkins ALL=(ALL:ALL) NOPASSWD: ALL`
        * ctrl+x then y and enter            
    3. enable password base authentication ```vi /etc/ssh/sshd_config``` 
        * change password authentication to yes
    4. login into jenkins user ```su jenkins```
        * by default jenkins has no password
        * you can assign password to jenkins user
            `compgen -u`  --> list of users
            `passwd jenkins`
            `systemctl restart sshd`
    5. generate keys ```ssh-keygen```
        * this will create .ssh folder with id_rsa and id_rsa.pub
    6. restart sshd ```systemctl restart sshd``` 

## Maven slave

    1. install java8 and maven 
       ```
       sudo apt-get update
       sudo apt-get install openjdk-8-jdk -y
       sudo apt-get install maven -y
       ```  
    2. create user 
       ```
       adduser maven
       ``` 
    3. assign sudo permissions ```visudo```
        * add this line `maven ALL=(ALL:ALL) NOPASSWD: ALL`
        * ctrl+x then y and enter  
    4. enable password base authentication ```vi /etc/ssh/sshd_config``` 
    5. resgtart sshd ```systemctl restart sshd``` 

## establish master-slave connection

   1. go to master as jenkins user and copy keys into slave
        ```ssh-copy-id userslave@privateip```
   2. do setup on jenkins (manage jenkins --> managenodes -->new node)
    Go to Manage Jenkins
    Manage nodes and clouds
    New node
    Enter the name and tick permanent agent ok
        # No of executers - 2 or 3
        Remote root directory- /home/maven
        Labels- any name (assign this name in the master)
        launch method - launch agents via ssh 
            Host - Private ip address of the maven slave
            Credentials- user name and password of the maven slave
    Save.