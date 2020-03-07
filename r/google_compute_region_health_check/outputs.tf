output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_region_health_check.this.creation_timestamp
}

output "id" {
  description = "returns a string"
  value       = google_compute_region_health_check.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_region_health_check.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_region_health_check.this.region
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_region_health_check.this.self_link
}

output "type" {
  description = "returns a string"
  value       = google_compute_region_health_check.this.type
}

output "this" {
  value = google_compute_region_health_check.this
}

