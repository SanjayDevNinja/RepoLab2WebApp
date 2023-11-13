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
        stage('Build') {
            steps {
				git branch: 'main', url: 'https://github.com/SanjayDevNinja/RepoLab2WebApp.git'
                bat 'mvn clean compile test package'
				script {
					
					bat 'docker build -t sanjaydevninja/sanjaywebapp:1.0 .'
					
					// bat "docker login -u sanjaydevninja -p ${DOCKERHUB_PWD}"
					   // Use withCredentials to securely pass the Docker Hub credentials
                    withCredentials([usernamePassword(credentialsId: 'DockerUser', passwordVariable: 'DOCKERHUB_PWD', usernameVariable: 'DOCKERHUB_USER')]) {
                        sh 'docker login -u sanjaydevninja -p $DOCKERHUB_PWD'
                    }
				}
            }
        }
    }
}
