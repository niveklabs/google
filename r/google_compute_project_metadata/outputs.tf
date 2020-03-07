output "id" {
  description = "returns a string"
  value       = google_compute_project_metadata.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_project_metadata.this.project
}

output "this" {
  value = google_compute_project_metadata.this
}

