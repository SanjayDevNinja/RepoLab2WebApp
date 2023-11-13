pipeline{
  agent any
  tools{
        maven 'MAVEN3'
    }
    stages{
   
        stage('Docker Login'){
            steps{
                script{
 
                    withCredentials([usernamePassword(credentialsId: 'DockerUser', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh 'docker login --username ${USERNAME} --password ${PASSWORD}'
                    }
                }
            }
  		}

	}
}