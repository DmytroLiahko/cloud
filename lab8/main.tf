terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "mysql" {
  name         = "dmytroliashko/mysql:tf"
  keep_locally = true
}

resource "docker_image" "nginx" {
  name         = "dmytroliashko/nginx:tf"
  keep_locally = true
}

resource "docker_container" "mysql" {
  image = docker_image.mysql.latest
  name  = "mysql_tf"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "nginx_tf"
  ports {
    internal = 80
    external = 80
  }
}
