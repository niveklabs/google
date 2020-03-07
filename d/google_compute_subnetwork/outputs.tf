output "description" {
  description = "returns a string"
  value       = data.google_compute_subnetwork.this.description
}

output "gateway_address" {
  description = "returns a string"
  value       = data.google_compute_subnetwork.this.gateway_address
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_subnetwork.this.id
}

output "ip_cidr_range" {
  description = "returns a string"
  value       = data.google_compute_subnetwork.this.ip_cidr_range
}

output "network" {
  description = "returns a string"
  value       = data.google_compute_subnetwork.this.network
}

output "private_ip_google_access" {
  description = "returns a bool"
  value       = data.google_compute_subnetwork.this.private_ip_google_access
}

output "project" {
  description = "returns a string"
  value       = data.google_compute_subnetwork.this.project
}

output "region" {
  description = "returns a string"
  value       = data.google_compute_subnetwork.this.region
}

output "secondary_ip_range" {
  description = "returns a list of object"
  value       = data.google_compute_subnetwork.this.secondary_ip_range
}

output "self_link" {
  description = "returns a string"
  value       = data.google_compute_subnetwork.this.self_link
}

output "this" {
  value = google_compute_subnetwork.this
}

