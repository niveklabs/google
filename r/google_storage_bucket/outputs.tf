output "bucket_policy_only" {
  description = "returns a bool"
  value       = google_storage_bucket.this.bucket_policy_only
}

output "id" {
  description = "returns a string"
  value       = google_storage_bucket.this.id
}

output "project" {
  description = "returns a string"
  value       = google_storage_bucket.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_storage_bucket.this.self_link
}

output "url" {
  description = "returns a string"
  value       = google_storage_bucket.this.url
}

output "this" {
  value = google_storage_bucket.this
}

