output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_autoscaler.this.creation_timestamp
}

output "id" {
  description = "returns a string"
  value       = google_compute_autoscaler.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_autoscaler.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_autoscaler.this.self_link
}

output "zone" {
  description = "returns a string"
  value       = google_compute_autoscaler.this.zone
}

output "this" {
  value = google_compute_autoscaler.this
}

