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
