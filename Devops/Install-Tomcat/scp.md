## secure copy from AWS machine to my local windows machine
first copy tomcat-users.xml file from /opt/tomcat/conf/tomcat-users.xml to /home/ubuntu
`cp /opt/tomcat/conf/tomcat-users.xml .` here dot(.) indicates the present directory
`sudo chmod 777 tomcat-users.xml`
```
scp -i vpc-ec2-key.pem ubuntu@18.191.224.229:/home/ubuntu/tomcat-users.xml .
```
/opt/tomcat/webapps/manager/META-INF/context.xml

scp -i vpc-ec2-key.pem ubuntu@18.191.224.229:/home/ubuntu/context.xml .