pipeline {
    agent any
        environment {
            DOCKER_REGISTRY='mcat1980'
            APP_NAME='testj'
            BUILD_NUMBER='5.0'
        }

    stages {
//         stage('Build & Unit Tests') {
//             steps {
//               sh 'mvn clean package'
//             }
//         }
//         stage('Build Docker Images') {
//             steps {
//                 sh 'docker build . -t $DOCKER_REGISTRY/$APP_NAME:$BUILD_NUMBER'
//             }
//         }
        stage('Push Docker Images') {
            steps {
//                    sh 'echo dckr_pat_KfJQlpmEAHL_9ccoc5ghNPrvzew | docker login --username $DOCKER_REGISTRY --password-stdin'
//                    sh 'docker push $DOCKER_REGISTRY/$APP_NAME:$BUILD_NUMBER'

                withCredentials([string(credentialsId: '1e257bb9-8e49-41ee-9e96-5ae5f235a4af', variable: 'DOCKER_TOKEN')]) {
                    sh 'echo $DOCKER_TOKEN | docker login --username $DOCKER_REGISTRY --password-stdin'
                    sh 'docker push $DOCKER_REGISTRY/$APP_NAME:$BUILD_NUMBER'
                }
            }
        }
    }
}


