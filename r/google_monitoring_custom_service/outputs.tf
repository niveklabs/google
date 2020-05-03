output "id" {
  description = "returns a string"
  value       = google_monitoring_custom_service.this.id
}

output "name" {
  description = "returns a string"
  value       = google_monitoring_custom_service.this.name
}

output "project" {
  description = "returns a string"
  value       = google_monitoring_custom_service.this.project
}

output "service_id" {
  description = "returns a string"
  value       = google_monitoring_custom_service.this.service_id
}

output "this" {
  value = google_monitoring_custom_service.this
}

