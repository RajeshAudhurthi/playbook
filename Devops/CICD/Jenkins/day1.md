## stages 
   1. clone the source code 
      ```
      git clone https://github.com/wakaleo/game-of-life.git
      ```
   2. build package (war or jar or ear)
      1. goto Build and select execute shell
         ```
          mvn package
         ```
   3. show the  Junit test results reports
      ```
      gameoflife-web/target/surefire-reports/*.xml
      ```
   4. archive the artifact 
      ```
      gameoflife-web/target/*.war
      ``` 

## maven 
   1. maven is build tool
   2. mvn commands
      1. mvn compile 
      2. mvn test  = mvn compile + mvn test
      3. mvn package = mvn compile + mvn test + mvn package
      4. mvn install = mvn compile + mvn test + mvn package + mvn install  

## deploy gameoflife application in tomcat8 
   1. luanch ec2 machine
   2. install tomcat8
      ```
      sudo apt-get update
      sudo apt-get install tomcat8 -y
      ```
   3. deploy application 
       1. deploy war file in /var/lib/tomcat8/webapps 
       2. scp 
          ```
          scp -i vpc-key.pem gameoflife.war ubuntu@ip:/home/ubuntu/
          ```
       3. copy into webapps 
          ```
          cp gameoflife.war /var/lib/tomcat8/webapps
          ```
       4. application access in web
          ```
          http://publicip:8080/gameoflife
          ```
      
## Note: 
  1. get_url module in ansible


  scp -i Jenkins-Mumbai.pem ec2-13-233-41-195.ap-south-1.compute.amazonaws.com:/home/ubuntu/gol/game-of-life/gameoflife-web/target/gameoflife.war ~/Desktop
