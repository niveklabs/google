output "etag" {
  description = "returns a string"
  value       = google_cloudfunctions_function_iam_member.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_cloudfunctions_function_iam_member.this.id
}

output "project" {
  description = "returns a string"
  value       = google_cloudfunctions_function_iam_member.this.project
}

output "region" {
  description = "returns a string"
  value       = google_cloudfunctions_function_iam_member.this.region
}

output "this" {
  value = google_cloudfunctions_function_iam_member.this
}

