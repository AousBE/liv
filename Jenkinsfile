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
          sh "ansible-playbook /home/ansible/Desktop/Myapp/liv/ansible/build.yml -i /home/ansible/Desktop/Myapp/liv/ansible/inventory/host.yml --ask-become-pass"
			}
      }
}
}
