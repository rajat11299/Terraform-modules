resource "google_bigquery_table" "my_table" {
  dataset_id = google_bigquery_dataset.my_dataset.dataset_id
  table_id = var.table_id
  external_data_configuration {
    autodetect = var.autodetect
    source_format = var.source_format

    source_uris  = var.source_uris
  }
  deletion_protection = var.deletion_protection
}