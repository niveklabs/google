output "etag" {
  description = "returns a string"
  value       = google_project_iam_binding.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_project_iam_binding.this.id
}

output "project" {
  description = "returns a string"
  value       = google_project_iam_binding.this.project
}

output "this" {
  value = google_project_iam_binding.this
}

