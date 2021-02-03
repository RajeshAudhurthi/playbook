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
    withSonarQubeEnv('sonar-gol') {
      // requires SonarQube Scanner for Maven 3.2+
      sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.2:sonar'
    }
 }
}
