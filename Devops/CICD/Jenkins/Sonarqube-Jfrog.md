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
      1. launch ubuntu machine(t2.medium) and login machine 
            ```
            /etc/apt/sources.list: deb [trusted=yes] http://downloads.sourceforge.net/project/sonar-pkg/deb  binary/

            sudo apt-get update
            sudo apt-get install openjdk-8-jdk
            sudo apt-get install sonar=6.7.4
            sudo service sonar start
            ```
   2. sonarqube integrate jenkins 
   token -  a8be4dd53b335c290036728f983015d5e31632e9 
      1. install plugin (sonarqube)
      2. configure system 

## Jfrog artifactory 
   1. we can store artifcats in jfrog
   2. install jfrog [click here](https://websiteforstudents.com/how-to-install-jfrog-artifactory-on-ubuntu-18-04-16-04/)
   3. jfrog integrate jenkins 
   4. go manage jenkins 
       1. install plugin (manage plugins) (artifactory) 
       2. configure system (artifactory)



## free style 
## Pipeline 
## master-slave 
## jenkins integration 
## parameterzied 