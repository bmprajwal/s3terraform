pipeline {
    agent any
    
    environment {
    AWS_ACCESS_KEY_ID = credentials('aws-credentials_USR')  // username part of credential 'aws-credentials'
    AWS_SECRET_ACCESS_KEY = credentials('aws-credentials_PSW')  // password part
    AWS_DEFAULT_REGION = 'us-east-1'
}
    
    stages {
        stage('Checkout Terraform code') {
            steps {
                git url: 'https://github.com/bmprajwal/s3terraform.git', branch: 'main'
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
    

}
