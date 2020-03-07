output "id" {
  description = "returns a string"
  value       = google_compute_router_interface.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_router_interface.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_router_interface.this.region
}

output "this" {
  value = google_compute_router_interface.this
}

