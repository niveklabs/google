output "id" {
  description = "returns a string"
  value       = google_compute_global_network_endpoint.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_global_network_endpoint.this.project
}

output "this" {
  value = google_compute_global_network_endpoint.this
}

