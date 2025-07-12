# 🚀 Medusa Backend Deployment on AWS ECS with Terraform & GitHub Actions

This project demonstrates how to deploy the **Medusa open-source headless commerce platform backend** using **Terraform** on **AWS ECS with Fargate**, and integrates **GitHub Actions** for continuous deployment using Docker.

---

## 📁 Project Structure

medusa-ecs-deploy/
├── medusa-backend/ # Medusa backend project
│ ├── Dockerfile
│ └── ...
├── medusa-ecs-terraform/ # Terraform IaC files
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│ ├── provider.tf
│ ├── ecs.tf
│ ├── ecr.tf
│ └── vpc.tf
└── .github/
└── workflows/
└── docker-build.yml # GitHub Actions CI/CD

---

## ⚙️ Features

- 🌐 Deploys Medusa backend on **AWS ECS (Fargate)**
- 🐳 Docker-based deployment using **ECR**
- 🔄 **CI/CD pipeline** with GitHub Actions
- 🛠️ **Infrastructure as Code** using Terraform
- ☁️ AWS services: ECS, ECR, VPC, Subnets, Security Groups

---

## 🧰 Prerequisites

- ✅ AWS Account (Free Tier)
- ✅ GitHub account
- ✅ Docker installed and Docker Hub account
- ✅ Terraform v1.8.5+ installed
- ✅ AWS CLI configured:
  ```bash
  aws configure
🚀 Setup Instructions
🔹 1. Clone this Repository
bash
Copy
Edit
git clone https://github.com/<your-username>/medusa-ecs-deploy.git
cd medusa-ecs-deploy

🔹2. Build Docker Image (Optional)
bash
Copy
Edit
cd medusa-backend
docker build -t <your-dockerhub-username>/medusa-app:latest .
docker push <your-dockerhub-username>/medusa-app:latest

🔹 3. Add GitHub Actions Secrets
Go to your GitHub repo → Settings → Secrets and Variables → Actions → New Repository Secret:

DOCKER_USERNAME: Your Docker Hub username

DOCKER_PASSWORD: Your Docker Hub password or token
🔹 4. CI/CD via GitHub Actions
On every push to the main branch, the GitHub Action:

Builds Docker image

Pushes to Docker Hub

File: .github/workflows/docker-build.yml

🏗️ Deploy Infrastructure with Terraform
✅ Run:
bash
Copy
Edit
cd medusa-ecs-terraform
terraform init
terraform apply
Confirm with yes when prompted

✅ Creates:

ECS Cluster & Service

ECR Repository

VPC, Subnets, Security Groups

Launches Medusa container

👤 Author
Rupesh Kumar Jha
🔗 https://www.linkedin.com/in/rupesh-kumar-jha-b04b2119b/
🐙 https://github.com/rupesh109
