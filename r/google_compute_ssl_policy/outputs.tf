output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_ssl_policy.this.creation_timestamp
}

output "enabled_features" {
  description = "returns a set of string"
  value       = google_compute_ssl_policy.this.enabled_features
}

output "fingerprint" {
  description = "returns a string"
  value       = google_compute_ssl_policy.this.fingerprint
}

output "id" {
  description = "returns a string"
  value       = google_compute_ssl_policy.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_ssl_policy.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_ssl_policy.this.self_link
}

output "this" {
  value = google_compute_ssl_policy.this
}

