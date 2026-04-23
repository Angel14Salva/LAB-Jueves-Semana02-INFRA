resource "docker_container" "bd" {
  name  = "bd-${terraform.workspace}"
  image = "postgres:15"

  ports {
    internal = 5432
    external = var.bd_port[terraform.workspace]
  }

  networks_advanced {
    name = docker_network.app_network.name
  }

  env = [
    "POSTGRES_USER=admin",
    "POSTGRES_PASSWORD=admin123",
    "POSTGRES_DB=appdb"
  ]
}