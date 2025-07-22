pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')     // Jenkins credential ID
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key') // Jenkins credential ID
        AWS_DEFAULT_REGION = 'us-east-1' // set your region
    }
    
    stages {
        stage('Checkout Terraform code') {
            steps {
                git url: 'https://github.com/your-org/your-terraform-repo.git', branch: 'main'
            }
        }
        
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }
        
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
    
    post {
        always {
            cleanWs()
        }
    }
}
