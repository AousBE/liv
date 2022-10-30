pipeline {
  agent any
  
  stages {
        stage('Pull GIT') {
            steps {
                echo 'Pulling...';
                  git branch: 'feature_facture',
                  url : 'https://github.com/chamsBLT/ci_project-Angular.git',
                  credentialsId: 'token';
            }
        }
          
    stage('build ansible') {
			steps{     
          sh "ansible-playbook ansible/build.yml -i ansible/inventory/host.yml"
			}
      }
}
}
