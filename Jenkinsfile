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
			    sh "docker build -t aous1/cicd_front_app_facture ."
			    
		    }
		    }
    }
	  stage('Push new image') {
			steps{
		withDockerRegistry([credentialsId: "docker-credentials", url: ""]) {
  		sh "docker push aous1/cicd_front_app_facture"
	}
			}
		}
  
}
}
