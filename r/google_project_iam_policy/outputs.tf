output "etag" {
  description = "returns a string"
  value       = google_project_iam_policy.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_project_iam_policy.this.id
}

output "this" {
  value = google_project_iam_policy.this
}

