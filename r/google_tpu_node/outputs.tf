output "id" {
  description = "returns a string"
  value       = google_tpu_node.this.id
}

output "network" {
  description = "returns a string"
  value       = google_tpu_node.this.network
}

output "network_endpoints" {
  description = "returns a list of object"
  value       = google_tpu_node.this.network_endpoints
}

output "project" {
  description = "returns a string"
  value       = google_tpu_node.this.project
}

output "service_account" {
  description = "returns a string"
  value       = google_tpu_node.this.service_account
}

output "this" {
  value = google_tpu_node.this
}

