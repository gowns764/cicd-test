pipeline {
    agent any

    environment {
        appName = "cicd-test"
        url = "https://hub.docker.com/repository/docker/gowns764/"
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-jenkins')
        dockerImage = ''
    }

    stages {
        stage('Git scm update') {
            steps {
                checkout scm
            }
        }
        stage('Docker build image') {
            steps {
                script {
                    dockerImage = docker.build appName
                }
            }
        }
        stage('Docker push image') {
            steps {
                script {
                    docker.withRegistry(url, DOCKERHUB_CREDENTIALS) {
                        dockerImage.push('latest')
                    }
                }
            }
        }
        stage('deploly kubernetes') {
            steps {
                script {
                    sh "kubectl apply -f " + appName + "--image " + url + appName
                }
            }
        }
    }
}