output "id" {
  description = "returns a string"
  value       = google_monitoring_dashboard.this.id
}

output "project" {
  description = "returns a string"
  value       = google_monitoring_dashboard.this.project
}

output "this" {
  value = google_monitoring_dashboard.this
}

