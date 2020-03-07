output "auto_create_routes" {
  description = "returns a bool"
  value       = google_compute_network_peering.this.auto_create_routes
}

output "id" {
  description = "returns a string"
  value       = google_compute_network_peering.this.id
}

output "state" {
  description = "returns a string"
  value       = google_compute_network_peering.this.state
}

output "state_details" {
  description = "returns a string"
  value       = google_compute_network_peering.this.state_details
}

output "this" {
  value = google_compute_network_peering.this
}

