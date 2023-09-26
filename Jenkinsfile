node {
   stage('Preparation') {
     checkout scm
   }
   stage('Terraform Initialize') {
       sh 'terraform init'
     }
   
   stage('Terraform Plan') {
       sh 'terraform plan -out tfplan'
   }

   stage('Terraform Plan to JSON') {
       sh 'terraform show -json tfplan  > tfplan.json'
   }
   
   stage('Terraform Plan to Console') {
       sh 'cat tfplan.json'
   }
   stage('Create PR'){
      sh 'git checkout -b new'
      sh 'gh pr create --title "Pull request test" --body "Pull request body"'
   }

   

   
   stage('Complete') {
        echo "Build Complete"
        echo "Hi"
        echo "H"
        
   }
}
