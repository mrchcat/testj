pipeline {
    agent any
        environment {
            DOCKER_REGISTRY= "${env.DOCKER_REGISTRY}"
            APP_NAME= "${env.APP_NAME}"
            IMAGE_TAG= "${env.BUILD_NUMBER}"
        }

    stages {
        stage('Build & Unit Tests') {
            steps {
              script {
                readProperties(file: ".env").each {key, value -> env[key] = value }
              }
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
