node {
   def output
   stage('Preparation') {
     checkout scm
   }
   stage('Terraform Initialize') {
       sh 'terraform init'
     }
   
   stage('Terraform Plan') {
      output = sh(script: "echo \$(terraform plan)", returnStdout: true)
      echo "Output: ${output}"
   }

   stage('Create PR'){
      sh 'git checkout main'
      sh 'git pull origin main'
      sh 'git push -u origin main'
      sh 'git checkout test'
      sh 'git pull origin test'
      sh (script: "gh pr create --title '${output}' --body 'Pull request body'")
      
   }

   

   
   stage('Complete') {
        echo "Build Complete"
        echo "Hi"
        
   }
   post {
 failure {
  echo "Hi Failed"
 }
 
 changed {
  sh 'echo "This will run only if the state of the Pipeline has changed"'
  sh 'echo "For example, the Pipeline was previously failing but is now successful"'
  sh 'echo "... or the other way around :)"'
 }
}
}
