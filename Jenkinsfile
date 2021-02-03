node {
    stage('scm') {
    // some block
    sh 'rm -rf game-of-life && git clone https://github.com/wakaleo/game-of-life.git'
}
    stage('build from maven') {
    // some block
    sh 'cd game-of-life && mvn package'
}
    stage('Junit results') {
    // some block
    junit 'game-of-life/gameoflife-web/target/surefire-reports/*.xml'
}
    stage('Archive the artifacts') {
    // some block
    archive 'game-of-life/gameoflife-web/target/*.war'
}
stage('Static Code analysis'){
       // performing sonarqube analysis with "withSonarQubeENV(<Name of Server configured in Jenkins>)"
    withSonarQubeEnv('sonar') {
      // requires SonarQube Scanner for Maven 3.2+
      sh '''cd game-of-life
mvn sonar:sonar -Dsonar.host.url="http://52.66.250.126:9000" -Dsonar.login=7533d2e33d94f9ce897e4003f575e311b9b80dda'''
    }
 }
}
