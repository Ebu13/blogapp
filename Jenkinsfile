pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                // Konuma git
                sh 'cd C:\ProgramData\Jenkins\.jenkins\workspace\BlogWebApp'
            }
        }
        stage('Build') {
            steps {
                // Maven ile projeyi derleyin
                sh 'mvn clean package'
            }
        }
        stage('Docker Build and Push') {
            steps {
                sh 'docker build -t blogappjdk .'
            }
        }
        stage('Deploy') {
            steps {
                // Docker imajını çalıştırın
                sh 'docker run -d -p 4444:80 --name myblogapp blogappjdk'
            }
        }
    }
}
