resource "google_compute_disk" "my-disk" {
    name = var.name
    zone = var.disk_zone
    type = var.disk_type
    image= var.disk_image

    labels = {
        "env" =  "prod"
    }
    physical_block_size_bytes = var.disk_block_size
    
  
}