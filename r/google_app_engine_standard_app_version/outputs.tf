output "id" {
  description = "returns a string"
  value       = google_app_engine_standard_app_version.this.id
}

output "name" {
  description = "returns a string"
  value       = google_app_engine_standard_app_version.this.name
}

output "project" {
  description = "returns a string"
  value       = google_app_engine_standard_app_version.this.project
}

output "this" {
  value = google_app_engine_standard_app_version.this
}

