output "fingerprint" {
  description = "returns a string"
  value       = google_compute_security_policy.this.fingerprint
}

output "id" {
  description = "returns a string"
  value       = google_compute_security_policy.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_security_policy.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_security_policy.this.self_link
}

output "this" {
  value = google_compute_security_policy.this
}

