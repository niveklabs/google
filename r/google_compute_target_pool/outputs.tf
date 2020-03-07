output "id" {
  description = "returns a string"
  value       = google_compute_target_pool.this.id
}

output "instances" {
  description = "returns a set of string"
  value       = google_compute_target_pool.this.instances
}

output "project" {
  description = "returns a string"
  value       = google_compute_target_pool.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_target_pool.this.region
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_target_pool.this.self_link
}

output "this" {
  value = google_compute_target_pool.this
}

