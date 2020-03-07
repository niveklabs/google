output "id" {
  description = "returns a string"
  value       = google_compute_router_peer.this.id
}

output "ip_address" {
  description = "returns a string"
  value       = google_compute_router_peer.this.ip_address
}

output "management_type" {
  description = "returns a string"
  value       = google_compute_router_peer.this.management_type
}

output "project" {
  description = "returns a string"
  value       = google_compute_router_peer.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_router_peer.this.region
}

output "this" {
  value = google_compute_router_peer.this
}

