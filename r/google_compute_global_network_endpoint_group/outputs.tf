output "id" {
  description = "returns a string"
  value       = google_compute_global_network_endpoint_group.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_global_network_endpoint_group.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_global_network_endpoint_group.this.self_link
}

output "this" {
  value = google_compute_global_network_endpoint_group.this
}

