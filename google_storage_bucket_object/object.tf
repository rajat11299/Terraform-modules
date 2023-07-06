resource "google_storage_bucket_object" "my_object" {
  name = var.object_name
  bucket = google_storage_bucket.my_bucket.name
  source = var.object_source
}