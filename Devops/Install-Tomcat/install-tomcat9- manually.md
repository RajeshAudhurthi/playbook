## Step 1 — Install Java
```
sudo apt update
sudo apt install default-jdk -y

```
## Step 2 — Create Tomcat User
```
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat

```
## Step 3 — Install Tomcat
`cd /tmp`
Find the latest version of Tomcat 9 at the [Tomcat 9 Downloads page](https://tomcat.apache.org/download-90.cgi).
```
curl -O paste_the_copied_link_here
sudo mkdir /opt/tomcat
sudo tar xzvf apache-tomcat-*tar.gz -C /opt/tomcat --strip-components=1

```
## Step 4 — Update Permissions
```
cd /opt/tomcat
sudo chgrp -R tomcat /opt/tomcat
sudo chmod -R g+r conf
sudo chmod g+x conf
sudo chown -R tomcat webapps/ work/ temp/ logs/
sudo nano /etc/systemd/system/tomcat.service

```
Paste the following contents into your service file.

```
[Unit]
Description=Apache Tomcat Web Application Container
After=network.target

[Service]
Type=forking

Environment=JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64
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
sudo systemctl enable tomcat

```
## Step 5 — Configure Tomcat Web Management Interface
`sudo nano /opt/tomcat/conf/tomcat-users.xml`

```
    <user username="admin" password="password" roles="manager-gui,admin-gui"/>

```

```
sudo nano /opt/tomcat/webapps/manager/META-INF/context.xml
sudo nano /opt/tomcat/webapps/host-manager/META-INF/context.xml

```
Inside, comment out the IP address restriction to allow connections from anywhere

```
<Context antiResourceLocking="false" privileged="true" >
  <!--<Valve className="org.apache.catalina.valves.RemoteAddrValve"
         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />-->
</Context>

```
`sudo systemctl restart tomcat`

## Step 8—Access the Web Interface

http://server_domain_or_IP:8080
