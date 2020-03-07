output "id" {
  description = "returns a string"
  value       = google_compute_router_nat.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_router_nat.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_router_nat.this.region
}

output "this" {
  value = google_compute_router_nat.this
}

