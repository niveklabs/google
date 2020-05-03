output "id" {
  description = "returns a string"
  value       = google_monitoring_slo.this.id
}

output "name" {
  description = "returns a string"
  value       = google_monitoring_slo.this.name
}

output "project" {
  description = "returns a string"
  value       = google_monitoring_slo.this.project
}

output "slo_id" {
  description = "returns a string"
  value       = google_monitoring_slo.this.slo_id
}

output "this" {
  value = google_monitoring_slo.this
}

