output "id" {
  description = "returns a string"
  value       = google_compute_network_endpoint_group.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_network_endpoint_group.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_network_endpoint_group.this.self_link
}

output "size" {
  description = "returns a number"
  value       = google_compute_network_endpoint_group.this.size
}

output "zone" {
  description = "returns a string"
  value       = google_compute_network_endpoint_group.this.zone
}

output "this" {
  value = google_compute_network_endpoint_group.this
}

