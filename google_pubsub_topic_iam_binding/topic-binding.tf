resource "google_pubsub_topic_iam_binding" "my-topic-binding" {
  topic = var.topic
  role = var.role
  members = var.members
}