output "display_name" {
  description = "returns a string"
  value       = data.google_monitoring_app_engine_service.this.display_name
}

output "id" {
  description = "returns a string"
  value       = data.google_monitoring_app_engine_service.this.id
}

output "name" {
  description = "returns a string"
  value       = data.google_monitoring_app_engine_service.this.name
}

output "service_id" {
  description = "returns a string"
  value       = data.google_monitoring_app_engine_service.this.service_id
}

output "telemetry" {
  description = "returns a list of object"
  value       = data.google_monitoring_app_engine_service.this.telemetry
}

output "this" {
  value = google_monitoring_app_engine_service.this
}

