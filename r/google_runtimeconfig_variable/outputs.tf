output "id" {
  description = "returns a string"
  value       = google_runtimeconfig_variable.this.id
}

output "project" {
  description = "returns a string"
  value       = google_runtimeconfig_variable.this.project
}

output "update_time" {
  description = "returns a string"
  value       = google_runtimeconfig_variable.this.update_time
}

output "this" {
  value = google_runtimeconfig_variable.this
}

