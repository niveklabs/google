output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_node_template.this.creation_timestamp
}

output "id" {
  description = "returns a string"
  value       = google_compute_node_template.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_node_template.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_node_template.this.region
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_node_template.this.self_link
}

output "this" {
  value = google_compute_node_template.this
}

