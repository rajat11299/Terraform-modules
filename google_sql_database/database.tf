resource "google_sql_database" "my-sql-database" {
  name = var.database_name
  instance = var.instance
}