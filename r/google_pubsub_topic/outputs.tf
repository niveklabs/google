output "id" {
  description = "returns a string"
  value       = google_pubsub_topic.this.id
}

output "project" {
  description = "returns a string"
  value       = google_pubsub_topic.this.project
}

output "this" {
  value = google_pubsub_topic.this
}

