output "id" {
  description = "returns a string"
  value       = google_project_usage_export_bucket.this.id
}

output "project" {
  description = "returns a string"
  value       = google_project_usage_export_bucket.this.project
}

output "this" {
  value = google_project_usage_export_bucket.this
}

