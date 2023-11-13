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
		stage('Check out') {
			steps {
				git branch: 'main', url: 'https://github.com/SanjayDevNinja/RepoLab2WebApp.git'		
			}
		}
        stage('Build') {
            steps {				
                bat 'mvn clean compile test package'
				
            }
        }
		stage('Docker Build') {
			steps {
				bat 'docker build -t sanjaydevninja/sanjaywebapp:1.0 .'
			}
		}
		stage('Docker Login') {
			steps {
					// bat "docker login -u sanjaydevninja -p ${DOCKERHUB_PWD}"
					
					  // Use withCredentials to securely pass the Docker Hub credentials
                   // withCredentials([usernamePassword(credentialsId: 'DockerUser', passwordVariable: 'DOCKERHUB_PWD', usernameVariable: 'DOCKERHUB_USER')]) {				                 
						//sh 'docker login -u $DOCKERHUB_USER --password $DOCKERHUB_PWD'
                   // }				
				   
				   //C:\ProgramData\Jenkins\.jenkins\workspace\Lab2_MavenPipeline>docker login -u sanjaydevninja -p $DOCKERHUB_PWD 
				   //WARNING! Using --password via the CLI is insecure. Use --password-stdin.
				   //Error response from daemon: Get "https://registry-1.docker.io/v2/": unauthorized: incorrect username or password   
				
				//unable to fix error
				//NOT Recommended
				bat 'docker login -u sanjaydevninja -p sanjay1234'
			}
		}
    }
}
