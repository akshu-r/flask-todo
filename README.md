# AWS Flask Microservice with VPC, ALB, RDS, S3 & IaC (Terraform)

Automated deployment of Flask To-Do microservice on AWS with Terraform.

Designed highly available and secure architecture, separating public (ALB) and private (EC2 + RDS) layers.

Implemented Auto Scaling and load balancing, securing sensitive credentials using Secrets Manager and IAM roles.

Applied Infrastructure as Code best practices for reproducible, scalable, and production-ready deployments.


This project demonstrates deploying a **Flask-based To-Do microservice** on **AWS** using **Terraform**.  
The infrastructure is fully automated, following **Infrastructure as Code (IaC)** best practices, and leverages **VPC, EC2, ALB, RDS, IAM, and Secrets Manager** for a scalable, secure, and production-ready architecture.

---

## Features

- **Flask To-Do Microservice** – Simple web application built with Python & Flask.
- **Infrastructure as Code (Terraform)** – Provision AWS resources reproducibly.
- **Networking** – Custom VPC with public/private subnets, Internet Gateway, NAT Gateway, and route tables.
- **Application Load Balancer (ALB)** – Handles HTTP traffic and distributes it across EC2 instances.
- **EC2 Auto Scaling** – Automatically scales application instances based on load.
- **RDS (MySQL)** – Multi-AZ relational database for persistent storage.
- **Secrets Management** – Stores database credentials securely using AWS Secrets Manager.
- **IAM Roles & Policies** – Secure EC2 access to secrets and resources.
- **Security Groups** – Layered security: ALB, App, and RDS with least privilege.

---

## Tech Stack

- **Backend**: Flask (Python)  
- **Infrastructure**: Terraform (AWS Provider)  
- **AWS Services**: VPC, Subnets, EC2, ALB, Auto Scaling Group, RDS, S3, Security Groups, IAM, Secrets Manager  
- **Automation**: EC2 User Data script to deploy app automatically

---


