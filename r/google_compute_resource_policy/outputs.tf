output "id" {
  description = "returns a string"
  value       = google_compute_resource_policy.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_resource_policy.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_resource_policy.this.region
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_resource_policy.this.self_link
}

output "this" {
  value = google_compute_resource_policy.this
}

