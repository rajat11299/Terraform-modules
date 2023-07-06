resource "google_compute_network_peering" "vpc-peering" {
  name = var.peering_name
  network = var.network_name
  peer_network = var.peered_network
}