pipeline {
    agent any
        environment {
            DOCKER_REGISTRY='mcat1980'
            APP_NAME='testj'
            BUILD_NUMBER='4.0'
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
                   sh 'echo 'dckr_pat_KfJQlpmEAHL_9ccoc5ghNPrvzew' | docker login --username mcat1980 --password-stdin'
                   sh 'docker push $DOCKER_REGISTRY/$APP_NAME:$BUILD_NUMBER'

//                 withCredentials([string(credentialsId: 'DockerHub', variable: 'DockerHub')]) {
//                     sh 'docker login -u mcat1980'
//                     sh 'docker push $DOCKER_REGISTRY/$APP_NAME:$BUILD_NUMBER'
//                 }
//                 withDockerRegistry([ credentialsId: "DockerHub", url: "" ]) {
//                     sh 'docker push $DOCKER_REGISTRY/$APP_NAME:$BUILD_NUMBER'
//                 }
            }
        }
    }
}


