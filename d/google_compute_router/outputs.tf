output "bgp" {
  description = "returns a list of object"
  value       = data.google_compute_router.this.bgp
}

output "creation_timestamp" {
  description = "returns a string"
  value       = data.google_compute_router.this.creation_timestamp
}

output "description" {
  description = "returns a string"
  value       = data.google_compute_router.this.description
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_router.this.id
}

output "self_link" {
  description = "returns a string"
  value       = data.google_compute_router.this.self_link
}

output "this" {
  value = google_compute_router.this
}

