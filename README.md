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

### Output
![Screenshot_1-12-2025_201644_43 204 116 93](https://github.com/user-attachments/assets/839586d7-89cf-4f29-a8e4-9a7c1d555037)

### Terminal
<img width="1592" height="967" alt="Screenshot 2025-12-01 202245" src="https://github.com/user-attachments/assets/12682755-1d23-464e-b34d-9068c3500a9d" />




