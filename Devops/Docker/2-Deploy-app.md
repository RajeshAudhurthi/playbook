## for Java application we need following
   1. Operating System
   2. Java
   3. tomcat 
   4. deploy application
    ```
        if Ubuntu base image 
            FROM ubuntu:16.04 
            RUN apt-get update 
            RUN apt-get install openjdk-8-jdk -y
            RUN apt-get install tomcat8 -y
            RUN wget s3bucketurl /webapps

        if Java Base Image 
            FROM openjdk:8  (OS+java8)
            RUN apt-get update
            RUN apt-get install tomcat8 -y
            RUN wget s3bucketurl /webapps 

        if tomcat base image 
            FROM tomcat:8 (OS+Java8+tomcat8)
            RUN wget s3bucketurl /webapps
    ```
## Deploy 
   1. before use base image we need to play with base image 
   2. create tomcat container 
      ```
      docker --help
      docker container run -d -P tomcat:8
      ```
   3. login into container  
       ```
       docker --help
       docker container exec -it ContainerID /bin/bash
      ```
   4. web apps path  /usr/local/tomcat/webapps 

## 1 Dockerfile 

```
FROM tomcat:8 
LABEL "author"="DevOps" "Project"="gameoflife"
LABEL "mailid"="abc@gmail.com"
RUN wget https://war-jar-vn.s3.amazonaws.com/gameoflife.war
RUN cp gameoflife.war /usr/local/tomcat/webapps 
EXPOSE 8080
CMD ["catalina.sh", "run"]

```
* create a directory
    * `mkdir gol`
* go to that directory
    * `cd gol`
* make a file named **Dockerfile**
    * `vi Dockerfile`
* copy the above into this and save

## 2 Build image 
   ```
   docker --help
   docker image build -t image:tag .
   . represent current directory
   eg:  docker image build -t gol:1.0 .
   docker image ls OR docker images 
   ```
## 3 Docker container 
   ```
   docker --help
   docker container run -d -P gol:1.0 
   docker ps 
   or
   docker container ls
   ```