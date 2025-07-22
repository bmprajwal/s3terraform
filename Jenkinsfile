pipeline {
    agent any
    
    
    
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
