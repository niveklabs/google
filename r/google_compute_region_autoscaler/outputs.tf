output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_region_autoscaler.this.creation_timestamp
}

output "id" {
  description = "returns a string"
  value       = google_compute_region_autoscaler.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_region_autoscaler.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_region_autoscaler.this.region
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_region_autoscaler.this.self_link
}

output "this" {
  value = google_compute_region_autoscaler.this
}

