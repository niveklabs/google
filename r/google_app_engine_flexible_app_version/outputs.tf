output "id" {
  description = "returns a string"
  value       = google_app_engine_flexible_app_version.this.id
}

output "name" {
  description = "returns a string"
  value       = google_app_engine_flexible_app_version.this.name
}

output "project" {
  description = "returns a string"
  value       = google_app_engine_flexible_app_version.this.project
}

output "runtime_api_version" {
  description = "returns a string"
  value       = google_app_engine_flexible_app_version.this.runtime_api_version
}

output "this" {
  value = google_app_engine_flexible_app_version.this
}

