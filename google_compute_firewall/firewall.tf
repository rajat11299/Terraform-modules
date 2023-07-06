resource "google_compute_firewall" "firewall_rule" {
  name = var.firewall_rule
  network = var.vpc_network
  allow {
    protocol = var.protocol_name
    ports = var.port_number
  }
  source_tags = var.tag_name
}