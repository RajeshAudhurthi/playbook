node{
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
    archiveArtifacts artifacts: 'game-of-life/gameoflife-web/target/*.war', followSymlinks: false
}
}