resource "docker_network" "app_network" {
  name = "network-${terraform.workspace}"
}