pipeline {
    agent any

    environment {
        DB_HOST   = '192.168.12.1'
        USERNAME  = 'user1'
        PASSWORD  = 'password123'
    }

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
                echo "The Database IP is: ${DB_HOST}"
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh '''
                    . venv/bin/activate
                    pytest
                '''
                echo "Commit: ${env.GIT_COMMIT}"
            }
        }
    }
}
