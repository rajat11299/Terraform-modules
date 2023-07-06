resource "google_compute_router" "router" {
  name    = var.router_name
  region  = var.router_region
  network = var.router_network
}

