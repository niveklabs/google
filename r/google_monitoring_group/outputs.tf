output "id" {
  description = "returns a string"
  value       = google_monitoring_group.this.id
}

output "name" {
  description = "returns a string"
  value       = google_monitoring_group.this.name
}

output "project" {
  description = "returns a string"
  value       = google_monitoring_group.this.project
}

output "this" {
  value = google_monitoring_group.this
}

