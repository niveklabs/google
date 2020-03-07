output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_vpn_gateway.this.creation_timestamp
}

output "gateway_id" {
  description = "returns a number"
  value       = google_compute_vpn_gateway.this.gateway_id
}

output "id" {
  description = "returns a string"
  value       = google_compute_vpn_gateway.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_vpn_gateway.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_vpn_gateway.this.region
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_vpn_gateway.this.self_link
}

output "this" {
  value = google_compute_vpn_gateway.this
}

