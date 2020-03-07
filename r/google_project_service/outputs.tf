output "id" {
  description = "returns a string"
  value       = google_project_service.this.id
}

output "project" {
  description = "returns a string"
  value       = google_project_service.this.project
}

output "this" {
  value = google_project_service.this
}

