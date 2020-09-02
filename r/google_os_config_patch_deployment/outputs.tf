output "create_time" {
  description = "returns a string"
  value       = google_os_config_patch_deployment.this.create_time
}

output "id" {
  description = "returns a string"
  value       = google_os_config_patch_deployment.this.id
}

output "last_execute_time" {
  description = "returns a string"
  value       = google_os_config_patch_deployment.this.last_execute_time
}

output "name" {
  description = "returns a string"
  value       = google_os_config_patch_deployment.this.name
}

output "project" {
  description = "returns a string"
  value       = google_os_config_patch_deployment.this.project
}

output "update_time" {
  description = "returns a string"
  value       = google_os_config_patch_deployment.this.update_time
}

output "this" {
  value = google_os_config_patch_deployment.this
}

