resource "google_compute_router_nat" "nat" {
  name                               = var.nat_name
  router                             = var.router_name
  region                             = var.nat_region
  nat_ip_allocate_option             = var.nat_ip
  source_subnetwork_ip_ranges_to_nat = var.allsubnet_ip_ranges

  log_config {
    enable = var.log_config_enable
    filter = var.log_config_filter
  }
}