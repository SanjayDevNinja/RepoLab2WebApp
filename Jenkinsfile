pipeline {
    agent any
    tools {
		maven "MAVEN3"
		jdk "JDK"
	
	}
	environment
	{
		DOCKERHUB_PWD=credentials('CredentialID_DockerHubPWD')
	}
    stages {
        stage('Build') {
            steps {
				//#git branch: 'main', url: 'https://github.com/SanjayDevNinja/RepoLab2WebApp.git'
                //#bat 'mvn clean compile test package'
				script {
					
					//#bat 'docker build -t sanjaydevninja/sanjaywebapp:1.0 .'
					
					 sh "docker login -u sanjaydevninja -p ${DOCKERHUB_PWD}"
				}
            }
        }
    }
}
