pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                echo 'Setting up the environment...'
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Test') {
            steps {
                echo 'Running automated tests...'
                sh 'pytest'
            }
        }
    }
}
