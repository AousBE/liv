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
          sh "ansible-playbook /home/ansible/Desktop/Myapp/liv/ansible/build.yml -i /home/ansible/Desktop/Myapp/liv/ansible/inventory/host.yml "
			}
      }
}
}
