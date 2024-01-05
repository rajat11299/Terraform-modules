resource "google_container_cluster" "my-cluster" {
  name = var.name
  location = var.location
  node_locations = var.node_locations
  network = var.network
  subnetwork = var.subnetwork
  deletion_protection = var.deletion_protection
  remove_default_node_pool = var.remove_default_node_pool

  private_cluster_config {
    enable_private_nodes = var.enable_private_nodes
    master_ipv4_cidr_block = var.master_ipv4_cidr_block
    
  }

  dynamic "master_authorized_networks_config" {
    for_each = local.master_authorized_networks_config
    content {
      dynamic "cidr_blocks" {
        for_each = master_authorized_networks_config.value.cidr_blocks
        content {
          cidr_block = cidr_blocks.value.cidr_block
          display_name = cidr_blocks.value.display_name
        }
      }
    }
  }

  node_pool {
    name = var.node_pool_name
    initial_node_count = var.initial_node_count
    node_locations = var.node_locations

    node_config {
      machine_type = var.machine_type
      disk_type = var.disk_type
      disk_size_gb = var.disk_size_gb
    }
  }

  timeouts {
    create = var.timeouts_create
    update = var.timeouts_update

  }
}
