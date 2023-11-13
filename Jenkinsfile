pipeline{
  agent any
  tools{
        maven 'MAVEN3'
		jdk "JDK"
    }
    stages{
   
        stage('Docker Login'){
            steps{
                script{
 
                    withCredentials([usernamePassword(credentialsId: 'DockerUser', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh 'docker login --username sanjaydevninja --password sanjay1234'
                    }
                }
            }
  		}

	}
}