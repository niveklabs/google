output "etag" {
  description = "returns a string"
  value       = google_project_iam_audit_config.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_project_iam_audit_config.this.id
}

output "project" {
  description = "returns a string"
  value       = google_project_iam_audit_config.this.project
}

output "this" {
  value = google_project_iam_audit_config.this
}

