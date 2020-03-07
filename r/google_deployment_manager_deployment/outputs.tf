output "deployment_id" {
  description = "returns a string"
  value       = google_deployment_manager_deployment.this.deployment_id
}

output "id" {
  description = "returns a string"
  value       = google_deployment_manager_deployment.this.id
}

output "manifest" {
  description = "returns a string"
  value       = google_deployment_manager_deployment.this.manifest
}

output "project" {
  description = "returns a string"
  value       = google_deployment_manager_deployment.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_deployment_manager_deployment.this.self_link
}

output "this" {
  value = google_deployment_manager_deployment.this
}

