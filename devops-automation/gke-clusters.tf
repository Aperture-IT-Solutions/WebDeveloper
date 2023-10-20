resource "google_container_cluster" "prod-cluster" {
  name     = "prod-cluster"
  location = "us-central1-a"
  initial_node_count = 1
  node_config {
    machine_type = "n1-standard-2"
  }
}


resource "google_container_cluster" "dev-cluster" {
  name     = "dev-cluster"
  location = "us-central1-b"
  initial_node_count = 1
  node_config {
    machine_type = "n1-standard-2"
  }
}