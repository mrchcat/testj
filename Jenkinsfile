pipeline {
    agent any
        environment {
            DOCKER_REGISTRY='mcat1980'
            APP_NAME='testj'
            BUILD_NUMBER='3.0'
        }

    stages {
//         stage('Build & Unit Tests') {
//             steps {
// //                   withEnv(['DOCKER_REGISTRY=mcat1980','APP_NAME=testj','BUILD_NUMBER=2.0']) {
// //                     echo $DOCKER_REGISTRY
// //                     echo $APP_NAME
// //                     echo $IMAGE_TAG
// //                   }
//                     sh 'echo $var1'
//             }
//         }
//         stage('Build & Unit Tests') {
//             steps {
//               echo 'test'
//               sh 'mvn clean package'
//             }
//         }
        stage('Build Docker Images and Push') {
            steps {
                sh 'echo $DOCKER_REGISTRY'
                sh 'echo $APP_NAME'
                sh 'echo $BUILD_NUMBER'

                sh """
                   docker build . -t $DOCKER_REGISTRY/$APP_NAME:$BUILD_NUMBER
                   docker push $DOCKER_REGISTRY/$APP_NAME:$BUILD_NUMBER  --all-tags
                   """
            }
        }
    }
}
