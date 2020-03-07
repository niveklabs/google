output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_vpn_tunnel.this.creation_timestamp
}

output "detailed_status" {
  description = "returns a string"
  value       = google_compute_vpn_tunnel.this.detailed_status
}

output "id" {
  description = "returns a string"
  value       = google_compute_vpn_tunnel.this.id
}

output "local_traffic_selector" {
  description = "returns a set of string"
  value       = google_compute_vpn_tunnel.this.local_traffic_selector
}

output "peer_ip" {
  description = "returns a string"
  value       = google_compute_vpn_tunnel.this.peer_ip
}

output "project" {
  description = "returns a string"
  value       = google_compute_vpn_tunnel.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_vpn_tunnel.this.region
}

output "remote_traffic_selector" {
  description = "returns a set of string"
  value       = google_compute_vpn_tunnel.this.remote_traffic_selector
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_vpn_tunnel.this.self_link
}

output "shared_secret_hash" {
  description = "returns a string"
  value       = google_compute_vpn_tunnel.this.shared_secret_hash
}

output "tunnel_id" {
  description = "returns a string"
  value       = google_compute_vpn_tunnel.this.tunnel_id
}

output "this" {
  value = google_compute_vpn_tunnel.this
}

