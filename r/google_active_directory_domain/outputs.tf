output "fqdn" {
  description = "returns a string"
  value       = google_active_directory_domain.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = google_active_directory_domain.this.id
}

output "name" {
  description = "returns a string"
  value       = google_active_directory_domain.this.name
}

output "project" {
  description = "returns a string"
  value       = google_active_directory_domain.this.project
}

output "this" {
  value = google_active_directory_domain.this
}

