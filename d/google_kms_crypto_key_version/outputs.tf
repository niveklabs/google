output "algorithm" {
  description = "returns a string"
  value       = data.google_kms_crypto_key_version.this.algorithm
}

output "id" {
  description = "returns a string"
  value       = data.google_kms_crypto_key_version.this.id
}

output "protection_level" {
  description = "returns a string"
  value       = data.google_kms_crypto_key_version.this.protection_level
}

output "public_key" {
  description = "returns a list of object"
  value       = data.google_kms_crypto_key_version.this.public_key
}

output "state" {
  description = "returns a string"
  value       = data.google_kms_crypto_key_version.this.state
}

output "this" {
  value = google_kms_crypto_key_version.this
}

