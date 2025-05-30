# 🚀 Task 3 – Infrastructure as Code (IaC) with Terraform

## 📌 Objective

Provision a local Docker container using Terraform, demonstrating the principles of Infrastructure as Code.
## 🧰 Tools Used

    Terraform v1.x

    Docker (installed on Ubuntu)

    Docker provider for Terraform (kreuzwerker/docker)

## 📂 Files Included
```
.
├── main.tf                  # Terraform configuration
├── terraform-init.txt       # Logs of terraform init
├── terraform-plan.txt       # Logs of terraform plan
├── terraform-apply.txt      # Logs of terraform apply
├── terraform-state-list.txt # Output of terraform state list
├── terraform-destroy.txt    # Logs of terraform destroy
└── README.md                # This document
```

## 🧱 main.tf Configuration
```bash
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  name  = "nginx_container"
  image = docker_image.nginx.name  # Updated to avoid deprecated 'latest'
  ports {
    internal = 80
    external = 8080
  }
}
```


## ✅ Steps Executed
### 🔹 1. Initialize Terraform

terraform init

    Initializes provider and sets up .terraform.lock.hcl.

### 🔹 2. Plan Infrastructure

terraform plan

    Terraform detects 2 resources to create: docker_image.nginx and docker_container.nginx.

### 🔹 3. Apply Infrastructure

terraform apply

    Successfully pulls Nginx image and runs a container on port 8080.

### 🔹 4. List Managed Resources

terraform state list

    Shows:

        docker_container.nginx

        docker_image.nginx

### 🔹 5. Destroy Infrastructure

terraform destroy

    Cleans up the Docker container and image.

## 🧾 Terminal Logs

You can find the logs of all Terraform operations in this repository:
```
    terraform-init.txt – Output of terraform init

    terraform-plan.txt – Output of terraform plan

    terraform-apply.txt – Output of terraform apply

    terraform-destroy.txt – Output of terraform destroy

    terraform-state-list.txt – Output of terraform state list
```
🔍 These logs demonstrate each stage of the infrastructure lifecycle and serve as evidence for task execution.
