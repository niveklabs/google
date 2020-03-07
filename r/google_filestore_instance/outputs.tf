output "create_time" {
  description = "returns a string"
  value       = google_filestore_instance.this.create_time
}

output "etag" {
  description = "returns a string"
  value       = google_filestore_instance.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_filestore_instance.this.id
}

output "project" {
  description = "returns a string"
  value       = google_filestore_instance.this.project
}

output "this" {
  value = google_filestore_instance.this
}

