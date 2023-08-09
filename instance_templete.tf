module "virtual_machine" {
    source = ".//google_compute_instance"
    vm_name = "vm-1"
    zone_name = "us-central1-a"
    machine_types = "e2-medium"
    image_name = "debian-cloud/debian-11"
    network_name = "my-vpc"
    subnetwork_name = "subnet-central"
    depends_on = [
      module.subnet_name
    ]
}
module "network_name" {
  source = ".//google_compute_network"
  network_name = "my-vpc-1"
  network_type = false
}

module "subnet_name" {
  source = ".//google_compute_subnetwork"
  subnet_name = "subnet-central"
  subnet_network = "my-vpc"
  subnet_region = "us-central1"
  subnet_range = "10.0.2.0/24" 
  depends_on = [
    module.network_name
  ]
}
