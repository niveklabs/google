output "id" {
  description = "returns a string"
  value       = google_service_account_key.this.id
}

output "name" {
  description = "returns a string"
  value       = google_service_account_key.this.name
}

output "pgp_key" {
  description = "returns a string"
  value       = google_service_account_key.this.pgp_key
}

output "private_key" {
  description = "returns a string"
  value       = google_service_account_key.this.private_key
  sensitive   = true
}

output "private_key_encrypted" {
  description = "returns a string"
  value       = google_service_account_key.this.private_key_encrypted
}

output "private_key_fingerprint" {
  description = "returns a string"
  value       = google_service_account_key.this.private_key_fingerprint
}

output "public_key" {
  description = "returns a string"
  value       = google_service_account_key.this.public_key
}

output "valid_after" {
  description = "returns a string"
  value       = google_service_account_key.this.valid_after
}

output "valid_before" {
  description = "returns a string"
  value       = google_service_account_key.this.valid_before
}

output "this" {
  value = google_service_account_key.this
}

