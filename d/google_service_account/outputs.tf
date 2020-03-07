output "display_name" {
  description = "returns a string"
  value       = data.google_service_account.this.display_name
}

output "email" {
  description = "returns a string"
  value       = data.google_service_account.this.email
}

output "id" {
  description = "returns a string"
  value       = data.google_service_account.this.id
}

output "name" {
  description = "returns a string"
  value       = data.google_service_account.this.name
}

output "unique_id" {
  description = "returns a string"
  value       = data.google_service_account.this.unique_id
}

output "this" {
  value = google_service_account.this
}

