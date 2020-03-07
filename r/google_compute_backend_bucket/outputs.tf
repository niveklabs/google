output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_backend_bucket.this.creation_timestamp
}

output "id" {
  description = "returns a string"
  value       = google_compute_backend_bucket.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_backend_bucket.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_backend_bucket.this.self_link
}

output "this" {
  value = google_compute_backend_bucket.this
}

