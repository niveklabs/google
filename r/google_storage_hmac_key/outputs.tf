output "access_id" {
  description = "returns a string"
  value       = google_storage_hmac_key.this.access_id
}

output "id" {
  description = "returns a string"
  value       = google_storage_hmac_key.this.id
}

output "project" {
  description = "returns a string"
  value       = google_storage_hmac_key.this.project
}

output "secret" {
  description = "returns a string"
  value       = google_storage_hmac_key.this.secret
  sensitive   = true
}

output "time_created" {
  description = "returns a string"
  value       = google_storage_hmac_key.this.time_created
}

output "updated" {
  description = "returns a string"
  value       = google_storage_hmac_key.this.updated
}

output "this" {
  value = google_storage_hmac_key.this
}

