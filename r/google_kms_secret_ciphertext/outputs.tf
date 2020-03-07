output "ciphertext" {
  description = "returns a string"
  value       = google_kms_secret_ciphertext.this.ciphertext
}

output "id" {
  description = "returns a string"
  value       = google_kms_secret_ciphertext.this.id
}

output "this" {
  value = google_kms_secret_ciphertext.this
}

