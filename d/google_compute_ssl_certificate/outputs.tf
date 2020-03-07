output "certificate" {
  description = "returns a string"
  value       = data.google_compute_ssl_certificate.this.certificate
}

output "certificate_id" {
  description = "returns a number"
  value       = data.google_compute_ssl_certificate.this.certificate_id
}

output "creation_timestamp" {
  description = "returns a string"
  value       = data.google_compute_ssl_certificate.this.creation_timestamp
}

output "description" {
  description = "returns a string"
  value       = data.google_compute_ssl_certificate.this.description
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_ssl_certificate.this.id
}

output "name_prefix" {
  description = "returns a string"
  value       = data.google_compute_ssl_certificate.this.name_prefix
}

output "private_key" {
  description = "returns a string"
  value       = data.google_compute_ssl_certificate.this.private_key
}

output "self_link" {
  description = "returns a string"
  value       = data.google_compute_ssl_certificate.this.self_link
}

output "this" {
  value = google_compute_ssl_certificate.this
}

