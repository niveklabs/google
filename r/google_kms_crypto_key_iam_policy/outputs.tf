output "etag" {
  description = "returns a string"
  value       = google_kms_crypto_key_iam_policy.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_kms_crypto_key_iam_policy.this.id
}

output "this" {
  value = google_kms_crypto_key_iam_policy.this
}

