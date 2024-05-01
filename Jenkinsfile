pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // Maven ile projeyi derleyin
                sh 'mvn clean package'
            }
        }
        stage('Docker Build and Push') {
            steps {
                // Docker imajını oluşturun ve Docker Hub'a gönderin
                script {
                    docker.build("blogappjdk").push()
                }
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
