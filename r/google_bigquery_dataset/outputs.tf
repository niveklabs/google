output "creation_time" {
  description = "returns a number"
  value       = google_bigquery_dataset.this.creation_time
}

output "etag" {
  description = "returns a string"
  value       = google_bigquery_dataset.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_bigquery_dataset.this.id
}

output "last_modified_time" {
  description = "returns a number"
  value       = google_bigquery_dataset.this.last_modified_time
}

output "project" {
  description = "returns a string"
  value       = google_bigquery_dataset.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_bigquery_dataset.this.self_link
}

output "this" {
  value = google_bigquery_dataset.this
}

