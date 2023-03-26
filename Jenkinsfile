pipeline {
    agent any

    parameters {
        choice(name: 'env', choices: ['dev', 'prod'], description: 'Chose an environment')
        choice(name: 'action', choices: ['apply', 'destroy'], description: 'Chose action to be apply or destroy')
    }

    stages{
        stage('Terraform init') {
            steps {
                sh "terrafile -f ./env-${env}/Terrafile"
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
                sh "terraform ${action} -var-file=env-${env}/${env}.tfvars -auto-approve"
            }
        }
    }
}