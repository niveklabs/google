output "email" {
  description = "returns a string"
  value       = data.google_bigquery_default_service_account.this.email
}

output "id" {
  description = "returns a string"
  value       = data.google_bigquery_default_service_account.this.id
}

output "project" {
  description = "returns a string"
  value       = data.google_bigquery_default_service_account.this.project
}

output "this" {
  value = google_bigquery_default_service_account.this
}

