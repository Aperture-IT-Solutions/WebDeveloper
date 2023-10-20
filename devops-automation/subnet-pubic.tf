resource "google_compute_subnetwork" "subnet1" {
  name          = "public-a"
  ip_cidr_range = "172.10.0.0/16"
  region        = "us-central1-a"
  network       = google_compute_network.vpc-network.id
}

resource "google_compute_subnetwork" "subnet2" {
  name          = "public-b"
  ip_cidr_range = "172.10.1.0/16"
  region        = "us-central1-b"
  network       = google_compute_network.vpc-network.id
}