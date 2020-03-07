output "access_token" {
  description = "returns a string"
  value       = data.google_service_account_access_token.this.access_token
  sensitive   = true
}

output "id" {
  description = "returns a string"
  value       = data.google_service_account_access_token.this.id
}

output "this" {
  value = google_service_account_access_token.this
}

