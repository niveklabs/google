output "email_address" {
  description = "returns a string"
  value       = data.google_storage_project_service_account.this.email_address
}

output "id" {
  description = "returns a string"
  value       = data.google_storage_project_service_account.this.id
}

output "project" {
  description = "returns a string"
  value       = data.google_storage_project_service_account.this.project
}

output "this" {
  value = google_storage_project_service_account.this
}

