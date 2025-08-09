pipeline {
    agent any

    stages {
        stage('Build & Unit Tests') {
            steps {
              echo 'test'
              sh 'mvn clean package'
            }
        }
    }
}
