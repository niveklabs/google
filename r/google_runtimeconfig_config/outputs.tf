output "id" {
  description = "returns a string"
  value       = google_runtimeconfig_config.this.id
}

output "project" {
  description = "returns a string"
  value       = google_runtimeconfig_config.this.project
}

output "this" {
  value = google_runtimeconfig_config.this
}

