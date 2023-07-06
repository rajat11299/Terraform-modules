resource "google_bigquery_dataset" "my_dataset" {
    dataset_id = var.dataset_id
    labels = {
        "env" = "prod"
    }

}