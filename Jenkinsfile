pipeline {
    agent any

    environment {
        IMAGE_NAME = "my-ubuntu-app"
        CONTAINER_NAME = "my-ubuntu-container"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d --name $CONTAINER_NAME $IMAGE_NAME'
            }
        }
    }

    post {
        success {
            echo "Docker image built and container running successfully!"
        }
        failure {
            echo "Build failed!"
        }
    }
}
