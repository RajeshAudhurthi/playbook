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

```

