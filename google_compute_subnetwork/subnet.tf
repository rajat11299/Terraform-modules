resource "google_compute_subnetwork" "name" {
    name = var.subnet_name
    network = var.subnet_network
    region = var.subnet_region
    ip_cidr_range = var.subnet_range
  
}