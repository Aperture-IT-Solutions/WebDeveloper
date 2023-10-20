resource "google_compute_firewall" "allow-instance" {
  name          = "allow-instance"
  network       = google_compute_network.vpc-network.id
  priority      = 1000       # Adjust the priority as needed

  source_ranges = ["0.0.0.0/0"]  # Be cautious with this; restrict the source IP range if possible

  # Define the allowed ports
  allow {
    protocol = "tcp"
    ports    = ["80","8080","22","9000"]  # Example ports (customize as needed)
  }

  # Specify the target tags to associate this rule with instances
  target_tags   = ["cluster-instance"]  # Replace with your instance's tag
}

resource "google_compute_firewall" "gke_firewall" {
  name    = "gke-cluster-firewall"
  network = google_compute_network.vpc-network.id

  allow {
    protocol = "tcp"
    ports    = ["30000-32800"]  # You can specify the desired ports
  }

  source_tags = ["prod-cluster","dev-cluster"]
}