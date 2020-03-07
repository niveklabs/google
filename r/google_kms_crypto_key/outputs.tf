output "id" {
  description = "returns a string"
  value       = google_kms_crypto_key.this.id
}

output "self_link" {
  description = "returns a string"
  value       = google_kms_crypto_key.this.self_link
}

output "this" {
  value = google_kms_crypto_key.this
}

