output "id" {
  description = "returns a string"
  value       = data.google_service_account_id_token.this.id
}

output "id_token" {
  description = "returns a string"
  value       = data.google_service_account_id_token.this.id_token
  sensitive   = true
}

output "this" {
  value = google_service_account_id_token.this
}

