output "create_time" {
  description = "returns a string"
  value       = data.google_secret_manager_secret_version.this.create_time
}

output "destroy_time" {
  description = "returns a string"
  value       = data.google_secret_manager_secret_version.this.destroy_time
}

output "enabled" {
  description = "returns a bool"
  value       = data.google_secret_manager_secret_version.this.enabled
}

output "id" {
  description = "returns a string"
  value       = data.google_secret_manager_secret_version.this.id
}

output "name" {
  description = "returns a string"
  value       = data.google_secret_manager_secret_version.this.name
}

output "project" {
  description = "returns a string"
  value       = data.google_secret_manager_secret_version.this.project
}

output "secret_data" {
  description = "returns a string"
  value       = data.google_secret_manager_secret_version.this.secret_data
  sensitive   = true
}

output "version" {
  description = "returns a string"
  value       = data.google_secret_manager_secret_version.this.version
}

output "this" {
  value = google_secret_manager_secret_version.this
}

