resource "google_pubsub_subscription" "my-subscription" {
  name = var.name
  topic = var.topic
  ack_deadline_seconds = var.ack_deadline_seconds
}