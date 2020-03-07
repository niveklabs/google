output "id" {
  description = "returns a string"
  value       = google_datastore_index.this.id
}

output "index_id" {
  description = "returns a string"
  value       = google_datastore_index.this.index_id
}

output "project" {
  description = "returns a string"
  value       = google_datastore_index.this.project
}

output "this" {
  value = google_datastore_index.this
}

