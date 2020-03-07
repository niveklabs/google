output "id" {
  description = "returns a string"
  value       = google_storage_notification.this.id
}

output "notification_id" {
  description = "returns a string"
  value       = google_storage_notification.this.notification_id
}

output "self_link" {
  description = "returns a string"
  value       = google_storage_notification.this.self_link
}

output "this" {
  value = google_storage_notification.this
}

