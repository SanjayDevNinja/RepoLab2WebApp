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
					
					//bat 'docker build -t sanjaydevninja/sanjaywebapp:1.0 .'
					
					
					
					// bat "docker login -u sanjaydevninja -p ${DOCKERHUB_PWD}"
					   // Use withCredentials to securely pass the Docker Hub credentials
                   // withCredentials([usernamePassword(credentialsId: 'DockerUser', passwordVariable: 'DOCKERHUB_PWD', usernameVariable: 'DOCKERHUB_USER')]) {


					//C:\ProgramData\Jenkins\.jenkins\workspace\Lab2_MavenPipeline>docker login -u sanjaydevninja -p $DOCKERHUB_PWD 
					//WARNING! Using --password via the CLI is insecure. Use --password-stdin.
					//Error response from daemon: Get "https://registry-1.docker.io/v2/": unauthorized: incorrect username or password                    

					//sh 'docker login -u $DOCKERHUB_USER --password $DOCKERHUB_PWD'
                   // }
					//unable to fix error
					//bat 'docker login -u sanjaydevninja -p sanjay1234'
					
					  withCredentials([usernamePassword(credentialsId: 'DockerUser', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh 'docker login --username ${USERNAME} --password ${PASSWORD}'
				}
            }
        }
    }
}
