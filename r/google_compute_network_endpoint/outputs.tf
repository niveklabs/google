output "id" {
  description = "returns a string"
  value       = google_compute_network_endpoint.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_network_endpoint.this.project
}

output "zone" {
  description = "returns a string"
  value       = google_compute_network_endpoint.this.zone
}

output "this" {
  value = google_compute_network_endpoint.this
}

