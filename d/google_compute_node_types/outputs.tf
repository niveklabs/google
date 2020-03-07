output "id" {
  description = "returns a string"
  value       = data.google_compute_node_types.this.id
}

output "names" {
  description = "returns a list of string"
  value       = data.google_compute_node_types.this.names
}

output "project" {
  description = "returns a string"
  value       = data.google_compute_node_types.this.project
}

output "zone" {
  description = "returns a string"
  value       = data.google_compute_node_types.this.zone
}

output "this" {
  value = google_compute_node_types.this
}

