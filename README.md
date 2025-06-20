# Terraform VPC Infrastructure

## Overview

This Terraform configuration sets up a basic AWS network infrastructure, including:

- A VPC (`10.0.0.0/16`)
- Two public subnets in different availability zones
- Two private subnets in different availability zones
- An Internet Gateway for public subnet access to the internet
- A NAT Gateway for private subnet access to the internet
- Routing tables to allow connectivity between all subnets
- A bastion host for SSH access to instances in private subnets
- An EC2 instance in a private subnet
- Security groups with SSH access rules

## Project Structure

terraform-vpc/
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md

## Usage

To set up the infrastructure:

```bash
terraform init
terraform plan
terraform apply

SSH Access
To access the private EC2 instance via the bastion host, use this SSH proxy command: ssh -i ~/.ssh/alex-key.pem \
  -o ProxyCommand="ssh -i ~/.ssh/alex-key.pem -W %h:%p ubuntu@<BASTION_PUBLIC_IP>" \
  ubuntu@<PRIVATE_INSTANCE_IP

Example: ssh -i ~/.ssh/alex-key.pem \
  -o ProxyCommand="ssh -i ~/.ssh/alex-key.pem -W %h:%p ubuntu@3.65.176.206" \
  ubuntu@10.0.3.171

Verification
 terraform validate passed successfully

 terraform fmt formatted the code

 SSH access from bastion to private instance works
