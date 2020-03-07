output "address" {
  description = "returns a string"
  value       = data.google_compute_global_address.this.address
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_global_address.this.id
}

output "project" {
  description = "returns a string"
  value       = data.google_compute_global_address.this.project
}

output "self_link" {
  description = "returns a string"
  value       = data.google_compute_global_address.this.self_link
}

output "status" {
  description = "returns a string"
  value       = data.google_compute_global_address.this.status
}

output "this" {
  value = google_compute_global_address.this
}

