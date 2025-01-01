#Jenkinsfile to create aws resource using the terraform
pipeline {
    environment {
        AWS_ACCESS_KEY_ID = credentials('Access-key')
        AWS_SECRET_ACCESS_KEY = credentials('Secret-access-key')
    }

    agent any

    stages {
        stage('checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Pratik-Argade/test1.git']])
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=planfile'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve planfile'
            }
        }
    }
}
