output "create_time" {
  description = "returns a string"
  value       = google_secret_manager_secret_version.this.create_time
}

output "destroy_time" {
  description = "returns a string"
  value       = google_secret_manager_secret_version.this.destroy_time
}

output "id" {
  description = "returns a string"
  value       = google_secret_manager_secret_version.this.id
}

output "name" {
  description = "returns a string"
  value       = google_secret_manager_secret_version.this.name
}

output "this" {
  value = google_secret_manager_secret_version.this
}

