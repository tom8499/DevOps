resource "docker_network" "private-network" {
    name = "my-network"
    attachable = true
    labels {
      label = "challenge"
      value = "second"       
    }
  
}