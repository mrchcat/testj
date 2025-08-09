pipeline {
    agent any

    stages {
        stage('Build & Unit Tests') {
            steps {
              echo 'test'
              RUN sed -i 's/\r$//' mvnw
              sh './mvnw clean package'
            }
        }
    }
}
