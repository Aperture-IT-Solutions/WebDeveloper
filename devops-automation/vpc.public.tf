resource "google_compute_network" "vpc-network" {
  name = "public-vpc"
  auto_create_subnetworks = false
}  
 