output "address" {
  description = "returns a string"
  value       = google_compute_address.this.address
}

output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_address.this.creation_timestamp
}

output "id" {
  description = "returns a string"
  value       = google_compute_address.this.id
}

output "network_tier" {
  description = "returns a string"
  value       = google_compute_address.this.network_tier
}

output "project" {
  description = "returns a string"
  value       = google_compute_address.this.project
}

output "purpose" {
  description = "returns a string"
  value       = google_compute_address.this.purpose
}

output "region" {
  description = "returns a string"
  value       = google_compute_address.this.region
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_address.this.self_link
}

output "subnetwork" {
  description = "returns a string"
  value       = google_compute_address.this.subnetwork
}

output "users" {
  description = "returns a list of string"
  value       = google_compute_address.this.users
}

output "this" {
  value = google_compute_address.this
}

