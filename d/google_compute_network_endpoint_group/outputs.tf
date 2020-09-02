output "default_port" {
  description = "returns a number"
  value       = data.google_compute_network_endpoint_group.this.default_port
}

output "description" {
  description = "returns a string"
  value       = data.google_compute_network_endpoint_group.this.description
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_network_endpoint_group.this.id
}

output "network" {
  description = "returns a string"
  value       = data.google_compute_network_endpoint_group.this.network
}

output "network_endpoint_type" {
  description = "returns a string"
  value       = data.google_compute_network_endpoint_group.this.network_endpoint_type
}

output "size" {
  description = "returns a number"
  value       = data.google_compute_network_endpoint_group.this.size
}

output "subnetwork" {
  description = "returns a string"
  value       = data.google_compute_network_endpoint_group.this.subnetwork
}

output "this" {
  value = google_compute_network_endpoint_group.this
}

