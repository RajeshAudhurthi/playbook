node{
    stage('scm') {
    // some block
    sh 'git clone https://github.com/wakaleo/game-of-life.git'
}
    stage('build from maven') {
    // some block
    sh 'mvn package'
}
    stage('Junit results') {
    // some block
    junit 'gameoflife-web/target/surefire-reports/*.xml'
}
    stage('Archive the artifacts') {
    // some block
    archive 'gameoflife-web/target/*.war'
}
}