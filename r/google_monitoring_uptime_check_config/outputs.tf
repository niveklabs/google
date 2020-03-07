output "id" {
  description = "returns a string"
  value       = google_monitoring_uptime_check_config.this.id
}

output "is_internal" {
  description = "returns a bool"
  value       = google_monitoring_uptime_check_config.this.is_internal
}

output "name" {
  description = "returns a string"
  value       = google_monitoring_uptime_check_config.this.name
}

output "project" {
  description = "returns a string"
  value       = google_monitoring_uptime_check_config.this.project
}

output "uptime_check_id" {
  description = "returns a string"
  value       = google_monitoring_uptime_check_config.this.uptime_check_id
}

output "this" {
  value = google_monitoring_uptime_check_config.this
}

