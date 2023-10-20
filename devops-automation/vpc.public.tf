resource "google_compute_network" "vpc-network" {
  name = "rede-vpc"
  auto_create_subnetworks = false
}  
 