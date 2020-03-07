output "etag" {
  description = "returns a string"
  value       = google_binary_authorization_attestor_iam_binding.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_binary_authorization_attestor_iam_binding.this.id
}

output "project" {
  description = "returns a string"
  value       = google_binary_authorization_attestor_iam_binding.this.project
}

output "this" {
  value = google_binary_authorization_attestor_iam_binding.this
}

