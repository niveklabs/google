output "etag" {
  description = "returns a string"
  value       = google_storage_bucket_iam_policy.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_storage_bucket_iam_policy.this.id
}

output "this" {
  value = google_storage_bucket_iam_policy.this
}

