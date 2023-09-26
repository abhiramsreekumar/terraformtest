pipeline {
    agent any
   def output
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
               output = sh(script: "echo \$(terraform plan)", returnStdout: true)
               echo "Output: ${output}"
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
            mail bcc: '', body: "<b>Example</b><br>\n\<br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "ERROR CI: Project name -> ${env.JOB_NAME}", to: "foo@foomail.com";
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


