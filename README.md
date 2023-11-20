# Terraform Challenge


## Approch 1 - Hosting static website using AWS S3 and cloud-front
Description: This is a first and very simple approach where we have simple static website using AWS S3 bucket and AWS CloudFront for DNS.



## Approch 2 - Hosting static website using Kubernetes Cluster (EKS) and application using Nginx server
Description - This is a second approch making use of Kubernetes cluster (EKS) to host the application.

### Infrastructure 
Directory `k8s-cluster` hosts the Terraform to provision the Kubernetes cluster.

### Application deployment
Directory `k8s-deployments` hosts the applocation deployments.