output "ack_deadline_seconds" {
  description = "returns a number"
  value       = google_pubsub_subscription.this.ack_deadline_seconds
}

output "id" {
  description = "returns a string"
  value       = google_pubsub_subscription.this.id
}

output "path" {
  description = "returns a string"
  value       = google_pubsub_subscription.this.path
}

output "project" {
  description = "returns a string"
  value       = google_pubsub_subscription.this.project
}

output "this" {
  value = google_pubsub_subscription.this
}

