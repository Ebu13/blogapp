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
                bat 'ilk.bat'
            }
        }
        stage('Docker Build and Push') {
            steps {
                // Docker imajını oluşturun ve gönderin
                bat 'iki.bat'
            }
        }
        stage('Deploy') {
            steps {
                // Docker imajını çalıştırın
                bat 'son.bat'
            }
        }
    }
}
