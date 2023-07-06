resource "google_compute_instance" "vm1" {
  name = var.vm_name
  zone = var.zone_name
  machine_type = var.machine_types

  boot_disk {
    initialize_params {
        image = var.image_name
    }
  }

  network_interface {
    network = var.network_name
    subnetwork = var.subnetwork_name
    access_config{

    }
  }
}