pipeline {
    agent any
//         environment {
//             DOCKER_REGISTRY='mcat1980'
//             APP_NAME='testj'
//             BUILD_NUMBER='2.0'
//         }

    stages {
        stage('Build & Unit Tests') {
            steps {
              withEnv(['DOCKER_REGISTRY=mcat1980','APP_NAME=testj','BUILD_NUMBER=2.0']) {
              echo $DOCKER_REGISTRY
              echo $APP_NAME
              echo $IMAGE_TAG
            }
        }
//         stage('Build & Unit Tests') {
//             steps {
//               echo 'test'
//               sh 'mvn clean package'
//             }
//         }
//         stage('Build Docker Images and Push') {
//             steps {
//                 sh """
//                    docker build . -t $DOCKER_REGISTRY/$APP_NAME:$IMAGE_TAG
//                    docker push $DOCKER_REGISTRY/$APP_NAME:$IMAGE_TAG
//                    """
//             }
//         }
    }
}
