node {
   stage('Preparation') {
     checkout scm
   }
   stage('Terraform Initialize') {
       sh 'terraform init'
     }
   
   stage('Terraform Plan') {
      def output = sh(script: "echo \$(terraform plan)", returnStdout: true)
      
   }

   stage('Create PR'){
      sh 'git checkout main'
      sh 'git pull origin main'
      sh 'git push -u origin main'
      sh 'git checkout test'
      sh 'git pull origin test'
      sh 'gh pr create --title "${output}" --body "Pull request body"'
      
   }

   

   
   stage('Complete') {
        echo "Build Complete"
        echo "Hi"
        echo "H"
        
   }
}
