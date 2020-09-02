output "id" {
  description = "returns a string"
  value       = google_monitoring_metric_descriptor.this.id
}

output "monitored_resource_types" {
  description = "returns a list of string"
  value       = google_monitoring_metric_descriptor.this.monitored_resource_types
}

output "name" {
  description = "returns a string"
  value       = google_monitoring_metric_descriptor.this.name
}

output "project" {
  description = "returns a string"
  value       = google_monitoring_metric_descriptor.this.project
}

output "this" {
  value = google_monitoring_metric_descriptor.this
}

