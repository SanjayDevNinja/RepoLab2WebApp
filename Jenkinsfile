pipeline {
    agent any
    tools {
		maven "MAVEN3"
		jdk "JDK"
	
	}
    stages {
        stage('Build') {
            steps {
                bat 'mvn clean compile'
            }
        }
    }
}
