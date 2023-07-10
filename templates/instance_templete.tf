module "virtual_machine" {
    source = "https://github.com/rajat11299/Terraform-modules//google_compute_instance"
    vm_name = "vm"
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
  source = "https://github.com/rajat11299/Terraform-modules//google_compute_network"
  network_name = "my-vpc"
  network_type = false
}

module "subnet_name" {
  source = "https://github.com/rajat11299/Terraform-modules//google_compute_subnetwork"
  subnet_name = "subnet-central"
  subnet_network = "my-vpc"
  subnet_region = "us-central1"
  subnet_range = "10.0.2.0/24" 
  depends_on = [
    module.network_name
  ]
}
