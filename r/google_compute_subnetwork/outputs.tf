output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_subnetwork.this.creation_timestamp
}

output "enable_flow_logs" {
  description = "returns a bool"
  value       = google_compute_subnetwork.this.enable_flow_logs
}

output "fingerprint" {
  description = "returns a string"
  value       = google_compute_subnetwork.this.fingerprint
}

output "gateway_address" {
  description = "returns a string"
  value       = google_compute_subnetwork.this.gateway_address
}

output "id" {
  description = "returns a string"
  value       = google_compute_subnetwork.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_subnetwork.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_subnetwork.this.region
}

output "secondary_ip_range" {
  description = "returns a list of object"
  value       = google_compute_subnetwork.this.secondary_ip_range
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_subnetwork.this.self_link
}

output "this" {
  value = google_compute_subnetwork.this
}

