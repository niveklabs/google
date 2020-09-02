output "create_time" {
  description = "returns a string"
  value       = google_secret_manager_secret.this.create_time
}

output "id" {
  description = "returns a string"
  value       = google_secret_manager_secret.this.id
}

output "name" {
  description = "returns a string"
  value       = google_secret_manager_secret.this.name
}

output "project" {
  description = "returns a string"
  value       = google_secret_manager_secret.this.project
}

output "this" {
  value = google_secret_manager_secret.this
}

