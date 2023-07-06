resource "google_pubsub_topic" "my-topic" {
  name = var.topic_name
}