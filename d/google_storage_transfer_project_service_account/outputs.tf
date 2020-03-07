output "email" {
  description = "returns a string"
  value       = data.google_storage_transfer_project_service_account.this.email
}

output "id" {
  description = "returns a string"
  value       = data.google_storage_transfer_project_service_account.this.id
}

output "project" {
  description = "returns a string"
  value       = data.google_storage_transfer_project_service_account.this.project
}

output "this" {
  value = google_storage_transfer_project_service_account.this
}

