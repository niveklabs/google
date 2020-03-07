output "id" {
  description = "returns a string"
  value       = google_compute_project_metadata_item.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_project_metadata_item.this.project
}

output "this" {
  value = google_compute_project_metadata_item.this
}

