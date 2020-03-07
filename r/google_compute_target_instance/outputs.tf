output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_target_instance.this.creation_timestamp
}

output "id" {
  description = "returns a string"
  value       = google_compute_target_instance.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_target_instance.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_target_instance.this.self_link
}

output "zone" {
  description = "returns a string"
  value       = google_compute_target_instance.this.zone
}

output "this" {
  value = google_compute_target_instance.this
}

