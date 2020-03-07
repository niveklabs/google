output "description" {
  description = "returns a string"
  value       = data.google_compute_network.this.description
}

output "gateway_ipv4" {
  description = "returns a string"
  value       = data.google_compute_network.this.gateway_ipv4
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_network.this.id
}

output "self_link" {
  description = "returns a string"
  value       = data.google_compute_network.this.self_link
}

output "subnetworks_self_links" {
  description = "returns a list of string"
  value       = data.google_compute_network.this.subnetworks_self_links
}

output "this" {
  value = google_compute_network.this
}

