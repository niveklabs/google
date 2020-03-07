output "description" {
  description = "returns a string"
  value       = data.google_compute_vpn_gateway.this.description
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_vpn_gateway.this.id
}

output "network" {
  description = "returns a string"
  value       = data.google_compute_vpn_gateway.this.network
}

output "project" {
  description = "returns a string"
  value       = data.google_compute_vpn_gateway.this.project
}

output "region" {
  description = "returns a string"
  value       = data.google_compute_vpn_gateway.this.region
}

output "self_link" {
  description = "returns a string"
  value       = data.google_compute_vpn_gateway.this.self_link
}

output "this" {
  value = google_compute_vpn_gateway.this
}

