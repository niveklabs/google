output "id" {
  description = "returns a string"
  value       = google_logging_project_exclusion.this.id
}

output "project" {
  description = "returns a string"
  value       = google_logging_project_exclusion.this.project
}

output "this" {
  value = google_logging_project_exclusion.this
}

