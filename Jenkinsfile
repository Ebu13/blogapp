pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'blogappjdk'
        CONTAINER_NAME = 'blogwebapp'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Ebu13/blogapp.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh "docker build -t blogappjdk ."
            }
        }
        stage('Deploy Container') {
            steps {
                sh "docker rm -f blogwebapp || true"
                sh "docker run --name blogwebapp -d -p 80:8080 blogappjdk"
            }
        }
    }
    post {
        always {
            sh "docker images"
            sh "docker ps -a"
}