output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_node_group.this.creation_timestamp
}

output "id" {
  description = "returns a string"
  value       = google_compute_node_group.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_node_group.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_node_group.this.self_link
}

output "zone" {
  description = "returns a string"
  value       = google_compute_node_group.this.zone
}

output "this" {
  value = google_compute_node_group.this
}

