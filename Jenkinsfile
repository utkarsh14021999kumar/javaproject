pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                echo 'Setting up the environment...'
                sh '''
                    python3 -m venv venv
                    . venv/bin/activate
                    pip install --upgrade pip
                    pip install -r requirements.txt
                '''
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh '''
                    . venv/bin/activate
                    pytest
                '''
            }
        }

        stage('Run App') {
            steps {
                echo 'Starting application...'
                sh '''
                    . venv/bin/activate
                    python app.py
                '''
            }
        }
    }
}
