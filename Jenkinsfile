pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Check out the code from  Git repository
                git 'https://github.com/DhaliwalTam/COMP367.git'
            }
        }
        stage('Build Maven Project') {
            steps {
                // Build the Maven project
                bat 'mvn clean install'
            }
        }
        stage('Docker Build') {
            steps {
                // Build the Docker image
                bat 'docker build -t  tdhali/comp367webapp:latest .'
            }
        }
        stage('Docker Login') {
    steps {
        // Login to Docker Hub using credentials stored in Jenkins
        withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
            script {
                // Use 'sh' instead of 'bat' for cross-platform compatibility
                
                    bat "echo %DOCKER_PASSWORD% | docker login -u %DOCKER_USERNAME% -p %DOCKER_PASSWORD%"
                }
            }
        }
    }
       stage('Docker Push') {
    steps {
        // Push the Docker image to Docker Hub
        withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
            bat 'docker login -u %DOCKER_USERNAME% -p %DOCKER_PASSWORD%'
            bat 'docker push tdhali/comp367webapp:latest'
        }
    }
}

    }
}
