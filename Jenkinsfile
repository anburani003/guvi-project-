pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/anburani003/guvi-project-.git'
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
