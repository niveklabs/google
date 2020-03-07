output "creation_time" {
  description = "returns a number"
  value       = google_bigquery_table.this.creation_time
}

output "etag" {
  description = "returns a string"
  value       = google_bigquery_table.this.etag
}

output "expiration_time" {
  description = "returns a number"
  value       = google_bigquery_table.this.expiration_time
}

output "id" {
  description = "returns a string"
  value       = google_bigquery_table.this.id
}

output "last_modified_time" {
  description = "returns a number"
  value       = google_bigquery_table.this.last_modified_time
}

output "location" {
  description = "returns a string"
  value       = google_bigquery_table.this.location
}

output "num_bytes" {
  description = "returns a number"
  value       = google_bigquery_table.this.num_bytes
}

output "num_long_term_bytes" {
  description = "returns a number"
  value       = google_bigquery_table.this.num_long_term_bytes
}

output "num_rows" {
  description = "returns a number"
  value       = google_bigquery_table.this.num_rows
}

output "project" {
  description = "returns a string"
  value       = google_bigquery_table.this.project
}

output "schema" {
  description = "returns a string"
  value       = google_bigquery_table.this.schema
}

output "self_link" {
  description = "returns a string"
  value       = google_bigquery_table.this.self_link
}

output "type" {
  description = "returns a string"
  value       = google_bigquery_table.this.type
}

output "this" {
  value = google_bigquery_table.this
}

