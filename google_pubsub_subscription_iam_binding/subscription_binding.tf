resource "google_pubsub_subscription_iam_binding" "my_subscription_binding" {
  subscription   = var.subscription
  role = var.role
  members = var.members
}