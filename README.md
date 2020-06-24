## Udacity Cloud DevOps Nanodegree Capstone

### Introduction

The project rubric required the deployment of a web service to an Amazon EKS Kubernetes taking advantage
of the C1/CD capabilities of the Jenkins Automation server

### Steps

* Created a Dockerfile that extends from the base nginx image and copied in an index.html from the repository
* Jenkins pipeline defined by a Jenkins file defined in the Github repository. The pipeline steps include
    * Linting the index.html to find any HTML errors
    * Running hadolint to check for syntax errors in the Dockerfile
    * Build a docker image from the Dockerfile and push it to the Docker Hub registry
    * Deploy a docker container with the image from the registry into a cluster of nodes running on AWS EKS
* The  kubernetes cluster was deployed to AWS using the eksctl tool to create the required cloudformation stacks.

![Jenkins Pipeline Steps](/screenshots/jenkins_eks_deploy.png)

![kubectl Get Services]

![AWS Website]()
