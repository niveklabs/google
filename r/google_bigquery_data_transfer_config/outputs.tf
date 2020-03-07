output "id" {
  description = "returns a string"
  value       = google_bigquery_data_transfer_config.this.id
}

output "name" {
  description = "returns a string"
  value       = google_bigquery_data_transfer_config.this.name
}

output "project" {
  description = "returns a string"
  value       = google_bigquery_data_transfer_config.this.project
}

output "this" {
  value = google_bigquery_data_transfer_config.this
}

