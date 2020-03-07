output "domain" {
  description = "returns a string"
  value       = google_storage_bucket_access_control.this.domain
}

output "email" {
  description = "returns a string"
  value       = google_storage_bucket_access_control.this.email
}

output "id" {
  description = "returns a string"
  value       = google_storage_bucket_access_control.this.id
}

output "this" {
  value = google_storage_bucket_access_control.this
}

