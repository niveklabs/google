output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_router.this.creation_timestamp
}

output "id" {
  description = "returns a string"
  value       = google_compute_router.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_router.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_router.this.region
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_router.this.self_link
}

output "this" {
  value = google_compute_router.this
}

