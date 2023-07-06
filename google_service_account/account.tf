resource "google_service_account" "my_account" {
  account_id = var.account_id
  display_name = var.display_name
}