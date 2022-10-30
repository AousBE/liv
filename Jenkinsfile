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
          
  
	  stage('Build new image') {
		    steps{
			    withDockerRegistry([credentialsId: "docker-credentials", url: ""]) {
			    sh "docker build -t aous1/aous_liv_front:$BUILD_NUMBER ."
			    
		    }
		    }
    }
	  stage('Push new image') {
			steps{
		withDockerRegistry([credentialsId: "docker-credentials", url: ""]) {
  		sh "docker push aous1/aous_liv_front:$BUILD_NUMBER"
	}
			}
		}
    stage('ansible playbook') {
			steps{
        scripts{
          sh "ansible-playbook /home/ansible/desktop/Myapp/ansible/build.yml -i /home/ansible/desktop/Myapp/ansible/inventory/host.yml"
        }
			}
      }

}
}
