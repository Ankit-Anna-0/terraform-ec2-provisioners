![Screenshot_30-11-2025_202113_](https://github.com/user-attachments/assets/57cbd2bf-fe76-493c-b59f-2a507c91641a)

# Terraform AWS EC2 Provisioner Project

This project demonstrates how to deploy an **AWS EC2 instance** using **Terraform** and configure it using Terraform provisioners.

##  Project Overview

This Terraform script performs the following:

- Creates an Amazon Linux EC2 instance
- Saves the instance's **private IP** locally using `local-exec`
- Connects to the instance using SSH
- Installs and starts **Nginx** using `remote-exec`

---

##  Requirements

Before using this project, ensure you have:

- Terraform installed
- AWS CLI configured with valid credentials
- An existing EC2 Key Pair in AWS
- A Security Group with:
  - Inbound SSH (Port 22)
  - Inbound HTTP (Port 80)
  - Outbound traffic allowed

---

##  Usage

### Initialize Terraform

```bash
terraform init
