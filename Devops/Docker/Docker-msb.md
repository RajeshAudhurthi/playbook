###### Date: 18-11-2020
## Docker -MSB (Multi Stage Build)    

1. cloning the source code 
2. Build the code by using (maven)
3. Store artifact in to a particular location.
4. deploy in to the container. (Tomcat)

    * Combine these four steps and write a docker file 
    * for this we take multiple hare images. and the final imagea will create from the last bare image .
    * Using multiple from Images

## Writing a docker file

1. go to docker hub and select maven 3 with java 8 ( Base Imoge)
2. Maven doesn't has Git so we need to install git. 
3. Use the '&&' (bash operator) for multiple commands in a single Run command
4. Clone the source code by using git clone command. 
5. go to the the directory where 'Pom.xml'  file is present and run 'mvn package'. After this you will get the war file location
6. Take another Base Image Tomcat 8. 
7. We can copy any file from one Base image to another baseimage by using the 'copy --from' command [check MSB docker document](https://docs.docker.com/develop/develop-images/multistage-build/) 
8. We have to copy(deploy) the 'war' file from the maven image to tomcat image. After deploying the war file to tomcat there is no need of mven image
9. 'maven will be removed. 
10. Identify the 'war' file location in maven before copying

## Docker file for game of life

FROM maven:3-openjdk-8
RUN apt-get update && apt-get install git -y && git clone https://github.com/wakaleo/game-of-life.git && cd game-of-life && mvn package
FROM tomcat:8
COPY --from=0 game-of-life/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh","run"]


1. Launch docker engine ec2 machine
2. mkdir MSB
3. cd MSB
4. vi Dockerfile
5. Copy the Dockerfile and save (ESC + :q) (shift +ZZ ) 
6. docker image build -t msb:1.0 .
7. docker container run -d -P msb:1.0
8. docker PS
9. Copy the port no.
10. ip address:port no./gameoflife ---------------web Page.


## Dockerfile for openmrs project


FROM maven:3-openjdk-8 as build
RUN apt-get update && apt-get install git -y && git clone https://github.com/openmrs/openmrs-core.git && cd openmrs-core && mvn package
FROM tomcat:8
COPY --from=build openmrs-core/webapp/target/openmrs.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh","run"]