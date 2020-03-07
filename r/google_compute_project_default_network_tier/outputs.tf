output "id" {
  description = "returns a string"
  value       = google_compute_project_default_network_tier.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_project_default_network_tier.this.project
}

output "this" {
  value = google_compute_project_default_network_tier.this
}

