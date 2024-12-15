pipeline {
    agent any

    environment {
        DOCKER_COMPOSE_FILE = 'docker-compose.yml'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checking out the source code from the repository
                git 'https://github.com/asantamolison4921/info8995-group3-assignment4'
            }
        }
        
        stage('Build x86') {
            steps {
                script {
                    // Building the x86 binary using Docker Compose
                    bat 'docker-compose -f %DOCKER_COMPOSE_FILE% up --build compiler-x86'
                }
            }
        }

        stage('Build ARM') {
            steps {
                script {
                    // Building the ARM binary using Docker Compose
                    bat 'docker-compose -f %DOCKER_COMPOSE_FILE% up --build compiler-arm'
                }
            }
        }

        stage('Archive Artifacts') {
            steps {
                script {
                    // Archiving the compiled binaries as build artifacts
                    archiveArtifacts artifacts: '**/output*', allowEmptyArchive: true
                }
            }
        }

        stage('Clean Up') {
            steps {
                script {
                    // Cleaning up the Docker containers
                    bat 'docker-compose down'
                }
            }
        }
    }

    post {
        always {
            // Ensuring any final cleanup actions are taken
            cleanWs()
        }
    }
}
