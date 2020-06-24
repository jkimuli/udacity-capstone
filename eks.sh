# This bash script creates a Kubernetes cluster on Amazon EKS using the eksctl utility

eksctl create cluster \
	--name capstone-nginx-cluster \
	--version 1.16 \
	--nodegroup-name nginx-workers \
	--node-type t2.small \
	--nodes 2 \
	--nodes-min 1 \
	--nodes-max 3 \
	--node-ami auto \
    --region us-east-1 \
	--zones us-east-1a,us-east-1b,us-east-1c \
    --ssh-access --ssh-public-key=myec2 