output "id" {
  description = "returns a string"
  value       = data.google_kms_secret.this.id
}

output "plaintext" {
  description = "returns a string"
  value       = data.google_kms_secret.this.plaintext
  sensitive   = true
}

output "this" {
  value = google_kms_secret.this
}

