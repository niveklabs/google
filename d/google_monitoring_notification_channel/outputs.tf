output "description" {
  description = "returns a string"
  value       = data.google_monitoring_notification_channel.this.description
}

output "enabled" {
  description = "returns a bool"
  value       = data.google_monitoring_notification_channel.this.enabled
}

output "id" {
  description = "returns a string"
  value       = data.google_monitoring_notification_channel.this.id
}

output "name" {
  description = "returns a string"
  value       = data.google_monitoring_notification_channel.this.name
}

output "sensitive_labels" {
  description = "returns a list of object"
  value       = data.google_monitoring_notification_channel.this.sensitive_labels
}

output "verification_status" {
  description = "returns a string"
  value       = data.google_monitoring_notification_channel.this.verification_status
}

output "this" {
  value = google_monitoring_notification_channel.this
}

