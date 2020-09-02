output "api_updated_member" {
  description = "returns a bool"
  value       = google_bigquery_dataset_access.this.api_updated_member
}

output "id" {
  description = "returns a string"
  value       = google_bigquery_dataset_access.this.id
}

output "project" {
  description = "returns a string"
  value       = google_bigquery_dataset_access.this.project
}

output "this" {
  value = google_bigquery_dataset_access.this
}

