pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Use 'checkout scm' to check out source code based on SCM configuration
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t anbuvanitha/guvi:latest .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh "docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD"
                    sh 'docker push anbuvanitha/guvi:latest'
                }
            }
        }
    }
}
