output "backend_service" {
  description = "returns a string"
  value       = data.google_compute_forwarding_rule.this.backend_service
}

output "description" {
  description = "returns a string"
  value       = data.google_compute_forwarding_rule.this.description
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_forwarding_rule.this.id
}

output "ip_address" {
  description = "returns a string"
  value       = data.google_compute_forwarding_rule.this.ip_address
}

output "ip_protocol" {
  description = "returns a string"
  value       = data.google_compute_forwarding_rule.this.ip_protocol
}

output "load_balancing_scheme" {
  description = "returns a string"
  value       = data.google_compute_forwarding_rule.this.load_balancing_scheme
}

output "network" {
  description = "returns a string"
  value       = data.google_compute_forwarding_rule.this.network
}

output "port_range" {
  description = "returns a string"
  value       = data.google_compute_forwarding_rule.this.port_range
}

output "ports" {
  description = "returns a set of string"
  value       = data.google_compute_forwarding_rule.this.ports
}

output "project" {
  description = "returns a string"
  value       = data.google_compute_forwarding_rule.this.project
}

output "region" {
  description = "returns a string"
  value       = data.google_compute_forwarding_rule.this.region
}

output "self_link" {
  description = "returns a string"
  value       = data.google_compute_forwarding_rule.this.self_link
}

output "subnetwork" {
  description = "returns a string"
  value       = data.google_compute_forwarding_rule.this.subnetwork
}

output "target" {
  description = "returns a string"
  value       = data.google_compute_forwarding_rule.this.target
}

output "this" {
  value = google_compute_forwarding_rule.this
}

