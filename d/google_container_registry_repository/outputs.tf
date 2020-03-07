output "id" {
  description = "returns a string"
  value       = data.google_container_registry_repository.this.id
}

output "project" {
  description = "returns a string"
  value       = data.google_container_registry_repository.this.project
}

output "repository_url" {
  description = "returns a string"
  value       = data.google_container_registry_repository.this.repository_url
}

output "this" {
  value = google_container_registry_repository.this
}

