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

        /***stage('Build image') {
            steps {
                echo 'Starting to build docker image'

                script {
                    def customImage = docker.build("jkimuli/udacity-capstone:latest")
                    customImage.push()
                }
            }
        }***/
         
     }
}