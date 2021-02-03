# A quick overview of SonarQube -
SonarQube is an open-source platform developed by SonarSource for continuous inspection of code quality to perform automatic reviews with static analysis of code to detect bugs, code smells, and security vulnerabilities on 20+ programming languages which includes javascript as well. In addition to that, it provides a dashboard view which shows a quick count on
Bugs, Vulnerabilities, Code smell, Code duplication, Code coverage percentage.
    * **Bug** — An issue that represents something wrong in the code. If this has not broken yet, it will, and probably at the worst possible moment. This needs to be fixed.
    * **Code Smell** — Are signals that your code should be refactored in order to improve extendability, readability, and supportability.
    * **Vulnerability** — A security-related issue which represents a backdoor for attackers. See also https://docs.sonarqube.org/latest/user-guide/security-rules/
    * **Code Duplication** — Having duplicate code in a codebase is often a bad practice, because repetition usually introduces bugs and makes the code more difficult to maintain
# SonarScanner
Its an official SonarQube Scanner used to start code analysis based on the plugins for different languages and configuration from a sonar-project.properties file. SonarJS is one of the plugins used by sonar scanner for Javascript
## Sonarqube Installation and integration
   
   1. install sonarqube 
      launch ubuntu machine(t2.medium) and login machine -**9000** port
            ```
            a. login as root user and open the below file
               sudo -i
               vi /etc/apt/sources.list
            b. Then copy the below line and save  
               deb [trusted=yes] http://downloads.sourceforge.net/project/sonar-pkg/deb  binary/
            c. Run these commands
               sudo apt-get update
               sudo apt-get install openjdk-8-jdk -y
               sudo apt-get install sonar=6.7.4 -y
               sudo systemctl start sonar
               sudo systemctl enable sonar
            ```
   2. sonarqube integrate jenkins 
      login to sonarqube - ip:9000
      username: admin
      password: admin
      give any name (Sonar here) copy the token
      sonar: 7533d2e33d94f9ce897e4003f575e311b9b80dda
      select java and maven
   3. Login to Jenkins server
      click on manage jenkins-->manage plugins 
      1. install plugin (sonarqube scanner)
      2. configure system 
   3. defaults
      
      curl -v -X GET http://http://52.66.249.128:8080/crumbIssuer/api/json --user Jenkins:Jenkins
Djenkins.model.Jenkins.crumbIssuerProxyCompatibility=true

## Jfrog artifactory 
   1. we can store artifcats in jfrog
   2. install jfrog [click here](https://websiteforstudents.com/how-to-install-jfrog-artifactory-on-ubuntu-18-04-16-04/)  ---ports **8081 and 8082**
```
      sudo apt update
      sudo apt dist-upgrade -y
      sudo apt autoremove
      sudo apt update
      sudo apt-get install openjdk-8-jdk openjdk-8-doc -y
         java -version
         Output:
         openjdk version "1.8.0_242"
         OpenJDK Runtime Environment (build 1.8.0_242-8u242-b08-0ubuntu3~18.04-b08)
         OpenJDK 64-Bit Server VM (build 25.242-b08, mixed mode)
      sudo apt install wget software-properties-common
      sudo -i
      wget -qO - https://api.bintray.com/orgs/jfrog/keys/gpg/public.key | apt-key add -
      sudo add-apt-repository "deb [arch=amd64] https://jfrog.bintray.com/artifactory-debs $(lsb_release -cs) main"

      sudo apt update
      sudo apt install jfrog-artifactory-oss
      
      systemctl stop artifactory.service
      systemctl start artifactory.service
      ........this takes time...
      systemctl enable artifactory.service
      systemctl status artifactory.service

```      
   3. login into machine
      jfrog integrate jenkins 
   4. defaults
      username: admin
      password: password

   5. Go to Manage Jenkins --> Manage Plugins
       1. install plugin (manage plugins) (artifactory) 
       2. configure system (artifactory)
            **Jfrog**:
            Click on `Add Artifactory Server`
            server id: any name
            URL: {public-ip}:8081/artifactory
            username: admin
            password: 
       3. click on Test Connection


## free style 
## Pipeline 
## master-slave 
## jenkins integration 
## parameterzied 