pipeline {
    agent any
        environment {
            DOCKER_REGISTRY='mcat1980'
            APP_NAME='testj'
            BUILD_NUMBER='6.0'
        }

    stages {
        stage('Build & Unit Tests') {
            steps {
              sh 'mvn clean package'
            }
        }
        stage('Build Docker Images') {
            steps {
                sh 'docker build . -t $DOCKER_REGISTRY/$APP_NAME:$BUILD_NUMBER'
            }
        }
        stage('Push Docker Images') {
            steps {
                withCredentials([string(credentialsId: 'DOCKER', variable: 'TOKEN')]) {
                    sh 'echo $TOKEN | docker login --username $DOCKER_REGISTRY --password-stdin'
                    sh 'docker push $DOCKER_REGISTRY/$APP_NAME:$BUILD_NUMBER'
                }
            }
        }
    }
}


