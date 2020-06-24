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

                sh 'docker build -t jkimuli/capstone-nginx:latest .'

                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: 'https://registry.hub.docker.com']){
                    
                    sh 'docker push jkimuli/capstone-nginx:latest'
                }
                    
            }
        }
    }
         
}
