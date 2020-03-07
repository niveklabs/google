output "id" {
  description = "returns a string"
  value       = data.google_kms_crypto_key.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.google_kms_crypto_key.this.labels
}

output "purpose" {
  description = "returns a string"
  value       = data.google_kms_crypto_key.this.purpose
}

output "rotation_period" {
  description = "returns a string"
  value       = data.google_kms_crypto_key.this.rotation_period
}

output "self_link" {
  description = "returns a string"
  value       = data.google_kms_crypto_key.this.self_link
}

output "version_template" {
  description = "returns a list of object"
  value       = data.google_kms_crypto_key.this.version_template
}

output "this" {
  value = google_kms_crypto_key.this
}

