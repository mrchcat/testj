pipeline {
    agent any
        environment {
            DOCKER_REGISTRY='mcat1980'
            APP_NAME='testj'
            BUILD_NUMBER='6.0'
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
//         stage('Push Docker Images') {
//             steps {
//                 withCredentials([string(credentialsId: 'DOCKER', variable: 'TOKEN')]) {
//                     sh 'echo $TOKEN | docker login --username $DOCKER_REGISTRY --password-stdin'
//                     sh 'docker push $DOCKER_REGISTRY/$APP_NAME:$BUILD_NUMBER'
//                 }
//             }
//         }
        stage('Deploy') {
            steps {
                withKubeConfig([credentialsId: 'KUBER_CONGIG_YAML']) {
                      sh 'kubectl het pods'
//                    sh 'helm install testj ./helm/testj'
                }
//                    sh 'kubectl config view --raw > C:/Users/User/.kube/config'
//                    sh 'helm install testj ./helm/testj'
//                       sh 'kubectl'
//                       sh 'minikube ip'
//                    sh '~/IdeaProjects/JenkinsTest/deploy.sh'
            }
        }
    }
}


