# Approch 2 - Hosting static website using Kubernetes Cluster (EKS) and application using Nginx server
Description - This is a second approch making use of Kubernetes cluster (EKS) to host the application.

## Contents
 
This directory host the IaC (Terraform) to provision the K8s Cluster

## Terraform state file
For a sake of simplicity, I am keeping the Terraform state file on local storage but this can be hosted on AWS S3 and Terraform lock file using DynamoDB table on AWS.

## AWS Credentails
AWS Credentials are stored in `~/.aws/credentials` file

## Maintenance of chosen solution:
1. Uptime - CloudFront and AWS S3 covers most aspect of High Avalability
2. New releases - AWS S3 bucket versioning has been enabled to keep new version of the website static pages. We can keep version of the application in separate repository for versioning and upload it to AWS S3 bucket using terraform provider.
3. Code re-usability - As this is a Terraform module, we can pretty much import into any setup and customise as required.
4. Improvement - We can provision custom domain using Route53 and integrate in this module.

## Pre-requisite
- Terraform (1.2.*^)
- An AWS account
- A terminal with the AWS CLI installed and configured



# Quick start
To provision the required AWS Resources you need to have AWS Account, AWS Credentails (~/.aws/credentails) in default profile.

## Initialie the terraform
```shell
terraform init
```

## Plan

```shell
terraform plan
```

## Apply

```shell
terraform apply --auto-approve
```

## Destroy or clean-up

```shell
terraform destroy --auto-approve
```