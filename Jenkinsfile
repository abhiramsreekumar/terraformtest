pipeline {
    agent any
    stages {
       stage('Terraform Initialize') {
            steps {
               sh 'terraform init -no-color'
               sh 'terraform apply --auto-approve'
               
            }
        }
       stage('Terraform Plan') {
            steps {
                script{
               env.output = sh(script: "echo \$(terraform plan -no-color)", returnStdout: true)
                    echo "Output: ${output}"
               
                
                }   
            }
        }
       stage('Create PR') {
            steps {
               sh 'git checkout test'
               sh 'git pull origin test'
               sh 'git push -u origin test'
               sh "gh pr create --title '${env.output}' --body 'Pull request body'"
              
            }
        }
    }
    post {
        success {
            echo 'The build was successful'
        }
        failure {
           emailext (
                to: '$DEFAULT_RECIPIENTS', 
                replyTo: '$DEFAULT_RECIPIENTS', 
                subject: '$DEFAULT_SUBJECT',
                body: '$DEFAULT_CONTENT',
                mimeType: 'text/html'
            );
        }
    }
}


