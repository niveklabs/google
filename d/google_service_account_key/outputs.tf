output "id" {
  description = "returns a string"
  value       = data.google_service_account_key.this.id
}

output "key_algorithm" {
  description = "returns a string"
  value       = data.google_service_account_key.this.key_algorithm
}

output "public_key" {
  description = "returns a string"
  value       = data.google_service_account_key.this.public_key
}

output "this" {
  value = google_service_account_key.this
}

