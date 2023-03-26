pipeline {
    agent any

    stages{
        stage('Terraform init') {
            steps {
                sh "terrafile -f env-${env}/Terrafile"
                sh "terraform init -backend-configure=env-${env}/${env}-backend.tfvars"
            }
        }
        stage('Terraform Plan') {
            steps {
                sh "terraform plan -var-file=env-${env}/${env}.tfvars"
            }
        }

        stage('Terraform Action') {
            steps {
                sh "terraform apply -var-file=env-${env}/${env}.tfvars -auto-approve"
            }
        }
    }
}