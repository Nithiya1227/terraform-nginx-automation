## Terraform Mini Project – Automated Nginx Deployment on AWS

This project demonstrates Infrastructure as Code (IaC) by provisioning and configuring a web server on AWS using Terraform.

In this project, I automated the complete process of launching an EC2 instance and configuring a web server without any manual SSH setup.

## With a single command:

terraform apply

## Terraform performs the following tasks automatically:

Creates an EC2 instance

Configures a Security Group allowing SSH (22) and HTTP (80)

Installs Nginx during instance boot using user_data

Starts and enables the Nginx service

Deploys a custom HTML page

Makes the website publicly accessible

This eliminates manual configuration and follows a production-style automation approach.


----


## Tech Stack Used:

Amazon Web Services (EC2)

Terraform

Linux

Nginx


-----


## What I Learned from This Project:

Writing Infrastructure as Code using Terraform

Automating server configuration with user_data

Managing Security Groups properly

Understanding boot-time automation

Avoiding manual SSH-based configuration

Maintaining clean Git repositories using .gitignore for Terraform projects


-----


## How to Run This Project:

Initialize Terraform
terraform init

Validate configuration
terraform validate

Apply infrastructure
terraform apply

Destroy infrastructure (to avoid charges)
terraform destroy

This project marks my transition from manual server setup to fully automated infrastructure provisioning.


----


## Screenshots

### Terraform Apply
![Terraform Apply](screenshots/terraform-apply.png)

### Terraform Apply
![Terraform Apply](screenshots/terraform-apply.png)

### EC2 Instance Running
![EC2 Running](screenshots/ec2-running.png)

### Website Output
![Website Output](screenshots/website-output.png)

### Terraform Apply
![Terraform Apply](screenshots/terraform-apply.png)


-----


## Future Improvements:

Automating Docker container deployment

Creating a custom VPC with public and private subnets

Integrating CI/CD pipeline

Adding Load Balancer setup


----


## Author:
Nithiya Bharathi
Aspiring DevOps Engineer
