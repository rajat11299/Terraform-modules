resource "google_compute_network" "network_name" {
  name = var.network_name
  //region = var.region_name
  auto_create_subnetworks = var.network_type
}