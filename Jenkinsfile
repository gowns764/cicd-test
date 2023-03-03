pipeline {
  environment { 
    repository = "gowns764/cicd-test"
    dockerImage = '' 
  }
  agent any

  stages {
    stage('git scm update') {
      steps {
        git url: 'https://github.com/gowns764/cicd-test.git', branch: 'main'
      }
    }
    stage('docker build') {
      steps {
        script {
          dockerImage = docker.build repository
        }
      }
    }
  }
}