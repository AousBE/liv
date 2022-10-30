pipeline {
  agent any
  
  stages {
        stage('Pull GIT') {
            steps {
                echo 'Pulling...';
                  git branch: 'main',
                  url : 'https://github.com/AousBE/liv.git',
                  credentialsId: 'token';
            }
        }
          
    stage('build ansible') {
			steps{     
          sh "ansible-playbook ansible/build.yml -i ansible/inventory/host.yml "
			}
      }
}
}
