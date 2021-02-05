**Here ansible works as a slave to the jenkins and master to the tomcat node**
# Ansible Master-Node
## Master

    1.launch machine and login as root user `sudo -i`
        install ansible 
    2. assign sudo permission `visudo`
        * add this line `ansible ALL=(ALL:ALL) NOPASSWD: ALL`
        * ctrl+x then y and enter            
    3. enable password base authentication ```vi /etc/ssh/sshd_config``` 
        * change password authentication to yes
    4. login into ansible user ```su ansible```
        * by default ansible has no password
        * you can assign password to ansible user
            `compgen -u`  --> list of users
            `passwd ansible`
            `systemctl restart sshd`
    5. generate keys ```ssh-keygen```
        * this will create .ssh folder with id_rsa and id_rsa.pub
    6. restart sshd ```systemctl restart sshd``` 

    7. in my inventory file 
        172.31.12.20 ansible_user=tomcat

## tomcat Node

    1. launch ec2 machine
    2. create user 
       ```
       adduser tomcat
       ``` 
    3. assign sudo permissions ```visudo```
        * add this line `tomcat ALL=(ALL:ALL) NOPASSWD: ALL`
        * ctrl+x then y and enter  
    4. enable password base authentication ```vi /etc/ssh/sshd_config``` 
    5. restart sshd ```systemctl restart sshd``` 

## establish master-node connection

   1. go to master as ansible user and copy keys into slave
        ```ssh-copy-id usernode@privateip```
   


    