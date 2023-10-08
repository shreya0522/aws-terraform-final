pipeline {
  agent any
  stages {
    stage("Git Checkout") {
      steps {
        script {
          git branch: 'main', credentialsId: 'shreya0522', url: 'https://github.com/shreya0522/aws-terraform-final.git'
        }
      }
    }

     stage("Parameter Setup") {
      steps {
        script {
        properties([
          parameters([
            choice(choices: ['apply', 'destroy'], name: 'ACTION')])])
        }
      }
    }


    stage("Terraform Init") {
      steps {
        script {
            sh 'terraform init'
        }
      }
    }
    stage("Terraform Validate") {
      steps {
        script {
            sh 'terraform validate'
        }
      }
    }
    stage('Terraform Plan') {
      steps {
        script {
            sh 'terraform plan'
        }
      }
    }
    stage('Terraform Approval') {
      steps {
        script {
          def userInput = input(id: 'confirm', message: 'Approve Terraform ?', parameters: [
            [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Approve Terraform', name: 'confirm']
          ])
        }
      }
    }
    stage('Terraform Action') {
      steps {
        script {
            sh 'terraform $ACTION --auto-approve'
        }
      }
    }
  }
}
