output "creation_record" {
  description = "returns a list of object"
  value       = google_monitoring_alert_policy.this.creation_record
}

output "id" {
  description = "returns a string"
  value       = google_monitoring_alert_policy.this.id
}

output "labels" {
  description = "returns a list of string"
  value       = google_monitoring_alert_policy.this.labels
}

output "name" {
  description = "returns a string"
  value       = google_monitoring_alert_policy.this.name
}

output "project" {
  description = "returns a string"
  value       = google_monitoring_alert_policy.this.project
}

output "this" {
  value = google_monitoring_alert_policy.this
}

