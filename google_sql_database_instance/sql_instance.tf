resource "google_sql_database_instance" "my-sql-instance" {
  name = var.instance_name
  region = var.instance_region
  database_version = var.database_version
  settings {
    tier = var.settings_tier
  }
  deletion_protection = var.deletion_protection
}