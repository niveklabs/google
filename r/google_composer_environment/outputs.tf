output "id" {
  description = "returns a string"
  value       = google_composer_environment.this.id
}

output "project" {
  description = "returns a string"
  value       = google_composer_environment.this.project
}

output "this" {
  value = google_composer_environment.this
}

