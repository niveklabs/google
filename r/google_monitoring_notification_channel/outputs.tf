output "id" {
  description = "returns a string"
  value       = google_monitoring_notification_channel.this.id
}

output "name" {
  description = "returns a string"
  value       = google_monitoring_notification_channel.this.name
}

output "project" {
  description = "returns a string"
  value       = google_monitoring_notification_channel.this.project
}

output "verification_status" {
  description = "returns a string"
  value       = google_monitoring_notification_channel.this.verification_status
}

output "this" {
  value = google_monitoring_notification_channel.this
}

