pipeline {
    agent any

    stages {
        stage('Git scm update') {
            steps {
                git url: 'https://github.com/gowns764/cicd-test.git', branch: 'main'
            }
        }
        stage('Define tag') {
            steps {
                script {
                    if
                }
            }
        }
        stage('Docker build and push') {
            steps {
                sh '''
                docker build -t 192.168.56.1:8443/cicd-test .
                docker push 192.168.56.1:8443/cicd-test
                '''
            }
        }
        stage('deploly kubernetes') {
            steps {
                sh '''
                kubectl create deploy nginx --image 192.168.56.1:8443/cicd-test
                kubectl expose deploy nginx --type NodePort --port 8080 --target-port 80 --name nginx
                '''
            }
        }
    }
}