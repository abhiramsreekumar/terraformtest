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
      sh 'git checkout main'
      sh 'git pull origin main'
      sh 'git push -u origin main'
      sh 'gh pr create -R {Upstream_Org}/{terraformtest} -H {terraformtest}:{main} --base {main}'
      
   }

   

   
   stage('Complete') {
        echo "Build Complete"
        echo "Hi"
        echo "H"
        
   }
}
