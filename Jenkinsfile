pipeline {
    agent any

    stages {
        stage('Build & Unit Tests') {
          echo test
//           sh "./mvnw clean package"
        }
//
//         stage('Build Docker Images') {
//             steps {
//                 sh """
//                 docker build -t ${DOCKER_REGISTRY}/customer-service:${IMAGE_TAG} customer-service
//                 docker build -t ${DOCKER_REGISTRY}/order-service:${IMAGE_TAG} order-service
//                 """
//             }
//         }
//
//         stage('Push Docker Images') {
//             steps {
//                 withCredentials([string(credentialsId: 'GHCR_TOKEN', variable: 'GHCR_TOKEN')]) {
//                     sh """
//                     echo \$GHCR_TOKEN | docker login ghcr.io -u ${GITHUB_USERNAME} --password-stdin
//                     docker push ${DOCKER_REGISTRY}/customer-service:${IMAGE_TAG}
//                     docker push ${DOCKER_REGISTRY}/order-service:${IMAGE_TAG}
//                     """
//                 }
//             }
//         }
    }
}
