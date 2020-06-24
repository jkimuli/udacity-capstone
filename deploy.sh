# Create a deployment on a Kubernetes cluster

kubectl create deployment udacity-capstone --image=jkimuli/capstone-nginx:latest --replicas=2

# get pods

kubectl get pods

# expose a service to external clients

kubectl expose deployment udacity-capstone --type LoadBalancer --port 80 --name=nginx-service

# display detailed information about service if created successfully

kubectl describe services nginx-service
