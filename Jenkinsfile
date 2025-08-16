pipeline {
    agent any
    environment {
        DB_HOST = '192.168.12.1'
        USERNAME = 'user1'
        PASSWORD = 'password123'
    }
    stages {
        stage('Setup') {
            steps {
                sh "pip install -r requirements.txt"
                echo "The Database IP is: ${DB_HOST}"
            }
        }
        stage('Test') {
            steps {
                sh "pytest"
                echo "The DB username is: ${USERNAME} and the password is: ${PASSWORD}"
            }
        }
    }
}
