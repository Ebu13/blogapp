pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                // İstenen konuma git
                bat 'cd C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\BlogWebApp'
            }
        }
        stage('Build') {
            steps {
                // Maven ile projeyi derleyin
                bat 'mvn -f C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\BlogWebApp\\pom.xml clean package'
            }
        }
        stage('Docker Build and Push') {
            steps {
                // Docker imajını oluşturun ve gönderin
                bat 'docker build -t blogappjdk -f C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\BlogWebApp\\Dockerfile .'
            }
        }
        stage('Deploy') {
            steps {
                // Docker imajını çalıştırın
                bat 'docker run -d -p 4444:80 --name myblogapp blogappjdk'
            }
        }
    }
}
