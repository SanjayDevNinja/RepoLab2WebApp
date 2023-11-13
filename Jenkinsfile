pipeline {
    agent any
    tools {
		maven "MAVEN3"
		jdk "JDK"
	
	}
	environment
	{
		DOCKERHUB_PWD=credentials('DockerUser')
	}
    stages {
       
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
