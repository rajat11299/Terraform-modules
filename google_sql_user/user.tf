resource "google_sql_user" "sql-user" {
  name = var.user_name
  instance = var.instance
  host = var.user_host
  password = var.user_password
}