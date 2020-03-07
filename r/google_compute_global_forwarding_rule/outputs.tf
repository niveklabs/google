output "id" {
  description = "returns a string"
  value       = google_compute_global_forwarding_rule.this.id
}

output "ip_address" {
  description = "returns a string"
  value       = google_compute_global_forwarding_rule.this.ip_address
}

output "ip_protocol" {
  description = "returns a string"
  value       = google_compute_global_forwarding_rule.this.ip_protocol
}

output "project" {
  description = "returns a string"
  value       = google_compute_global_forwarding_rule.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_global_forwarding_rule.this.self_link
}

output "this" {
  value = google_compute_global_forwarding_rule.this
}

