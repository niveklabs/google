output "certificate_id" {
  description = "returns a number"
  value       = google_compute_ssl_certificate.this.certificate_id
}

output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_ssl_certificate.this.creation_timestamp
}

output "id" {
  description = "returns a string"
  value       = google_compute_ssl_certificate.this.id
}

output "name" {
  description = "returns a string"
  value       = google_compute_ssl_certificate.this.name
}

output "name_prefix" {
  description = "returns a string"
  value       = google_compute_ssl_certificate.this.name_prefix
}

output "project" {
  description = "returns a string"
  value       = google_compute_ssl_certificate.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_ssl_certificate.this.self_link
}

output "this" {
  value = google_compute_ssl_certificate.this
}

