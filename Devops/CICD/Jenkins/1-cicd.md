# CICD stages 
   1. clone source code from remote repository
   2. build code using build tools 
       *  java build tools -- maven , gradle, Ant
       *  .net code --> Msbuild tools 
   3. unit test
   4. archive artifactory
   5. you can run other tests functional test , Performance test
   6. static code analysis --> code review Sonar
   7. store artifact in repositories (jfrog artifactory/ Nexus)
   8. deploy artifact in multiple ENV (dev , test etc) by using ansible, chef, puppet, shell, powershell 
# Jenkins ([Jenkins documentation](https://www.jenkins.io/doc/))
   1. install jenkins - java -- port 8080
      ```
      sudo apt-get update

      sudo apt-get install openjdk-8-jdk -y

      wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

      sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
      /etc/apt/sources.list.d/jenkins.list'
      
      sudo apt-get update

      sudo apt-get install jenkins
  
      sudo systemctl start jenkins

      sudo systemctl status jenkins
    
      ```
   2. 
      * Open ec2 machine and copy the public ip address
      * enter in the browser 
         * public ip:8080
      * copy the path displayed

      * login as root user
         * sudo -i
      * cat copied path
         * this will displays the admin password, copy it
      * paste in the browser page and continue
      * hit install pluggins
      * enter the details and continue
      * start using jenkins
* ## create java project 
   1. clone source code 
      ```
      git clone https://github.com/wakaleo/game-of-life.git
      ```
   2. build code using maven (install maven)```sudo apt-get install maven -y```
      ```
      mvn package
      ``` 