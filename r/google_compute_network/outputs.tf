output "gateway_ipv4" {
  description = "returns a string"
  value       = google_compute_network.this.gateway_ipv4
}

output "id" {
  description = "returns a string"
  value       = google_compute_network.this.id
}

output "ipv4_range" {
  description = "returns a string"
  value       = google_compute_network.this.ipv4_range
}

output "project" {
  description = "returns a string"
  value       = google_compute_network.this.project
}

output "routing_mode" {
  description = "returns a string"
  value       = google_compute_network.this.routing_mode
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_network.this.self_link
}

output "this" {
  value = google_compute_network.this
}

