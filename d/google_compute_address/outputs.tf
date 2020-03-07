output "address" {
  description = "returns a string"
  value       = data.google_compute_address.this.address
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_address.this.id
}

output "project" {
  description = "returns a string"
  value       = data.google_compute_address.this.project
}

output "region" {
  description = "returns a string"
  value       = data.google_compute_address.this.region
}

output "self_link" {
  description = "returns a string"
  value       = data.google_compute_address.this.self_link
}

output "status" {
  description = "returns a string"
  value       = data.google_compute_address.this.status
}

output "this" {
  value = google_compute_address.this
}

