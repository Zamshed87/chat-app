pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    docker.build('chat-app')
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.withRegistry('', 'docker-hub-credentials') {
                        docker.image('chat-app').push('latest')
                    }
                    sh 'docker run -d -p 1000:1000 chat-app'
                }
            }
        }
    }
}

