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
    stage('docker') {
			steps{     
          sh "ansible-playbook ansible/docker.yml -i ansible/inventory/host.yml "
			}
      }
    stage('registry') {
			steps{     
          sh "ansible-playbook ansible/docker-registry.yml -i ansible/inventory/host.yml "
			}
      }
   stage('Deploying App to Kubernetes') {
      steps {
        script {
          kubernetesDeploy(configs: "deploymentservice.yml", credentialsId: 'kubernetes')
        }
      }
    }
}
}
