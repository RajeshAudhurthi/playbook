# Introduction
Apache Tomcat is a web server and servlet container that is used to serve Java applications. Tomcat is an open source implementation of the Java Servlet and JavaServer Pages technologies, released by the Apache Software Foundation. This tutorial covers the basic installation and some configuration of the latest release of Tomcat 8 on your Ubuntu 16.04 server.
## Step 1: Install Java
```
sudo apt-get update
sudo apt-get install default-jdk `this will install java 11`
sudo apt-get install openjdk-8-jdk `this will install java 8`

```
**Note: To install Tomcat8 we need to install java8**
## Step 2: Create Tomcat User
```
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
```
## Step 3: Install Tomcat
Find the latest version of Tomcat 8 at the [Tomcat 8 Downloads page](http://tomcat.apache.org/download-80.cgi). At the time of writing, the latest version is 8.5.5, but you should use a later stable version if it is available. Under the Binary Distributions section, then under the Core list, copy the link to the “tar.gz”.

Next, change to the /tmp directory on your server. This is a good directory to download ephemeral items, like the Tomcat tarball, which we won’t need after extracting the Tomcat contents:
```
cd /tmp
curl -O https://downloads.apache.org/tomcat/tomcat-8/v8.5.59/bin/apache-tomcat-8.5.59.tar.gz
sudo mkdir /opt/tomcat
sudo tar xzvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1

```
## Step 4: Update Permissions
```
cd /opt/tomcat
sudo chgrp -R tomcat /opt/tomcat
sudo chmod -R g+r conf
sudo chmod g+x conf
sudo chown -R tomcat webapps/ work/ temp/ logs/

```
## Step 5: Create a systemd Service File
`sudo nano /etc/systemd/system/tomcat.service
`
Paste the following contents into your service file
```
[Unit]
Description=Apache Tomcat Web Application Container
After=network.target

[Service]
Type=forking

Environment=JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64/jre
Environment=CATALINA_PID=/opt/tomcat/temp/tomcat.pid
Environment=CATALINA_HOME=/opt/tomcat
Environment=CATALINA_BASE=/opt/tomcat
Environment='CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC'
Environment='JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom'

ExecStart=/opt/tomcat/bin/startup.sh
ExecStop=/opt/tomcat/bin/shutdown.sh

User=tomcat
Group=tomcat
UMask=0007
RestartSec=10
Restart=always

[Install]
WantedBy=multi-user.target

```

```
sudo systemctl daemon-reload
sudo systemctl start tomcat
sudo systemctl status tomcat


http://server_domain_or_IP:8080

```
If you were able to successfully accessed Tomcat, now is a good time to enable the service file so that Tomcat automatically starts at boot:

`sudo systemctl enable tomcat
`
## Step 7: Configure Tomcat Web Management Interface
```
sudo nano /opt/tomcat/conf/tomcat-users.xml

```
`<user username="admin" password="password" roles="manager-gui,admin-gui"/>` add this line above the last line.

```
sudo nano /opt/tomcat/webapps/manager/META-INF/context.xml
sudo nano /opt/tomcat/webapps/host-manager/META-INF/context.xml

```
Inside, comment out the IP address restriction to allow connections from anywhere. Alternatively, if you would like to allow access only to connections coming from your own IP address, you can add your public IP address to the list:
```
<!--<Valve className="org.apache.catalina.valves.RemoteAddrValve"
         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />-->
```
`sudo systemctl restart tomcat
`
## Step 8: Access the Web Interface

http://server_domain_or_IP:8080

# **Conclusion**
Your installation of Tomcat is complete! Your are now free to deploy your own Java web applications!




