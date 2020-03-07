output "creation_timestamp" {
  description = "returns a string"
  value       = data.google_compute_ssl_policy.this.creation_timestamp
}

output "custom_features" {
  description = "returns a set of string"
  value       = data.google_compute_ssl_policy.this.custom_features
}

output "description" {
  description = "returns a string"
  value       = data.google_compute_ssl_policy.this.description
}

output "enabled_features" {
  description = "returns a set of string"
  value       = data.google_compute_ssl_policy.this.enabled_features
}

output "fingerprint" {
  description = "returns a string"
  value       = data.google_compute_ssl_policy.this.fingerprint
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_ssl_policy.this.id
}

output "min_tls_version" {
  description = "returns a string"
  value       = data.google_compute_ssl_policy.this.min_tls_version
}

output "profile" {
  description = "returns a string"
  value       = data.google_compute_ssl_policy.this.profile
}

output "self_link" {
  description = "returns a string"
  value       = data.google_compute_ssl_policy.this.self_link
}

output "this" {
  value = google_compute_ssl_policy.this
}

