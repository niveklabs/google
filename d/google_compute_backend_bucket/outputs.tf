output "bucket_name" {
  description = "returns a string"
  value       = data.google_compute_backend_bucket.this.bucket_name
}

output "cdn_policy" {
  description = "returns a list of object"
  value       = data.google_compute_backend_bucket.this.cdn_policy
}

output "creation_timestamp" {
  description = "returns a string"
  value       = data.google_compute_backend_bucket.this.creation_timestamp
}

output "description" {
  description = "returns a string"
  value       = data.google_compute_backend_bucket.this.description
}

output "enable_cdn" {
  description = "returns a bool"
  value       = data.google_compute_backend_bucket.this.enable_cdn
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_backend_bucket.this.id
}

output "self_link" {
  description = "returns a string"
  value       = data.google_compute_backend_bucket.this.self_link
}

output "this" {
  value = google_compute_backend_bucket.this
}

