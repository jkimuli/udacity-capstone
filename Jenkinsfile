pipeline {
     agent any

    stages {

        stage('Lint HTML') {
            steps {

                echo 'Checking correctness of the HTML within the application'
                sh 'tidy -q -e *.html'
            }
        }

        stage('Lint Dockerfile'){
            steps{
                echo 'Using hadolint to test the dockerfile'
                sh 'hadolint --ignore DL3006 Dockerfile'
            }
        } 

        stage('Build and deploy docker image to docker hub' ) {
            steps {
                echo 'Starting to build docker image'

                script {
                    dockerImage = docker.build("jkimuli/capstone-nginx:latest")
                    docker.withRegistry('', 'docker-hub-credentials') {
                        dockerImage.push()
                    }
                }
                    
            }
        }
    }
         
}
