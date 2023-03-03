pipeline {
  agent any

  stages {
    stage('git scm update') {
      steps {
        git url: 'https://github.com/gowns764/cicd-test.git', branch: 'main'
      }
    }
    stage('kubectl') {
      steps {
        script {
          sh "kubectl get node"
        }
      }
    }
  }
}