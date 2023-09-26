pipeline {
    agent any
    stages {
        
        stage('Preparation') {
            steps {
               checkout scm
            }
        }

       stage('Terraform Initialize') {
            steps {
               sh 'terraform init'
            }
        }

       stage('Terraform Plan') {
            steps {
                script{
               def output = sh(script: "echo \$(terraform plan)", returnStdout: true)
               echo "Output: ${output}"
                }
            }
        }
       stage('Create PR') {
            steps {
               sh 'git checkout main'
               sh 'git pull origin main'
               sh 'git push -u origin main'
               sh 'git checkout test'
               sh 'git pull origin test'
               sh (script: "gh pr create --title '${output}' --body 'Pull request body'")
            }
        }
    }
    post {
        always {
            echo 'This will always run'
        }
        success {
            echo 'This will run only if successful'
        }
        failure {
            echo 'THis means failed'
        }
        unstable {
            echo 'This will run only if the run was marked as unstable'
        }
        changed {
            echo 'This will run only if the state of the Pipeline has changed'
            echo 'For example, if the Pipeline was previously failing but is now successful'
        }
    }
}


