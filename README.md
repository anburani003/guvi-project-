DevOps Task: System Provisioning
This project involves the provisioning of a small web application that displays "Hello GUVI GEEK." The task includes creating the application, pushing it to a specific folder in a GitHub repository, setting up a Jenkins job for building the application, creating a Jenkins pipeline triggered on every commit, and using Docker to create an image of the web application, pushing it to Docker Hub.

Tools Needed
GIT
Jenkins
Docker Hub
AWS EC2 instance (Ubuntu)
Task Steps
1. Web Application Creation
Create a small web application that displays "Hello GUVI GEEK."

2. Push to GitHub Repository
Push the developed web application to a specific folder in the given GitHub repository.

3. Jenkins Job Setup
Create a Jenkins job to build the application.
Configure Jenkins to trigger the build on every commit.
4. Jenkins Pipeline
If needed, use Pipeline as Code to define and manage the entire pipeline of the application.

5. Docker Image Creation
Use Jenkins and the Docker Plugin to create an image of the developed web application.

6. Docker Image Push
Push the Docker image to Docker Hub.

7. Submission Steps
Add all your work files to GitHub (https://github.com/).
Include the final screenshot of the Jenkins pipeline in this README.md file.
Provide the Docker image link in the same README.md file.
Jenkins Pipeline as Code
Here's a sample Jenkins Pipeline script (Jenkinsfile) that you can use or modify based on your project structure:

groovy
Copy code
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Application') {
            steps {
                // Add commands to build the application
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t yourusername/yourwebapp:latest .'
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    script {
                        sh "docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD"
                        sh 'docker push yourusername/yourwebapp:latest'
                    }
                }
            }
        }
    }
}
Replace yourusername/yourwebapp with your Docker Hub username and the desired name for your web application image.

**Final Screenshot of Jenkins Pipeline**

**Docker Image Link**
Docker Image on Docker Hub
