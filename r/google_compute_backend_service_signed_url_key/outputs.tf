output "id" {
  description = "returns a string"
  value       = google_compute_backend_service_signed_url_key.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_backend_service_signed_url_key.this.project
}

output "this" {
  value = google_compute_backend_service_signed_url_key.this
}

