pipeline {
    agent any

    environment {
        REPO_URL = 'https://github.com/YashwanthSaiRajReddyVanga/week5.git'
    }

    stages {
        stage('Declarative: Checkout SCM') {
            steps {
                checkout scm
            }
        }

        stage('Clone Repository') {
            steps {
                script {
                    // Fetch the repository
                    git url: "${REPO_URL}"
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    try {
                        // Add your build steps here, e.g. compile or build the project
                        echo 'Building the project...'
                        // Example build step (this will depend on your project type)
                        sh 'echo "Building..."' // Replace with actual build command
                    } catch (Exception e) {
                        echo "Build failed: ${e.message}"
                        currentBuild.result = 'FAILURE'
                        throw e // Fail the build explicitly
                    }
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    try {
                        // Run tests
                        echo 'Running tests...'
                        // Replace with your actual test command
                        sh 'echo "Testing..."' // Replace with actual test command
                    } catch (Exception e) {
                        echo "Test failed: ${e.message}"
                        currentBuild.result = 'FAILURE'
                        throw e // Fail the build explicitly
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    try {
                        // Deploy your project
                        echo 'Deploying project...'
                        // Example deploy step
                        sh 'echo "Deploying..."' // Replace with actual deploy command
                    } catch (Exception e) {
                        echo "Deploy failed: ${e.message}"
                        currentBuild.result = 'FAILURE'
                        throw e // Fail the build explicitly
                    }
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution complete.'
        }

        success {
            echo 'Pipeline succeeded.'
        }

        failure {
            echo 'Pipeline failed.'
        }
    }
}

  
