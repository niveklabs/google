output "access_token" {
  description = "returns a string"
  value       = data.google_client_config.this.access_token
  sensitive   = true
}

output "id" {
  description = "returns a string"
  value       = data.google_client_config.this.id
}

output "project" {
  description = "returns a string"
  value       = data.google_client_config.this.project
}

output "region" {
  description = "returns a string"
  value       = data.google_client_config.this.region
}

output "zone" {
  description = "returns a string"
  value       = data.google_client_config.this.zone
}

output "this" {
  value = google_client_config.this
}

