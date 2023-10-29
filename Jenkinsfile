pipeline {
    agent any
    tools {
		maven "MAVEN3"
		jdk "JDK"
	
	}
    stages {
        stage('Build') {
            steps {
				git branch: 'main', url: 'https://github.com/SanjayDevNinja/RepoLab2WebApp.git'
                bat 'mvn clean compile test package'
            }
        }
    }
}
