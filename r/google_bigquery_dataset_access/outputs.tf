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

