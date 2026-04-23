resource "docker_container" "web" {
  name  = "web-${terraform.workspace}"
  image = "lab/api"

  ports {
    internal = "80"
    external = var.web_port[terraform.workspace]
  }

  networks_advanced {
    name = docker_network.app_network.name
  }

  env = [
    "API_URL=http://api-${terraform.workspace}:3000"
  ]
}


