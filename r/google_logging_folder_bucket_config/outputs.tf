output "description" {
  description = "returns a string"
  value       = google_logging_folder_bucket_config.this.description
}

output "id" {
  description = "returns a string"
  value       = google_logging_folder_bucket_config.this.id
}

output "lifecycle_state" {
  description = "returns a string"
  value       = google_logging_folder_bucket_config.this.lifecycle_state
}

output "name" {
  description = "returns a string"
  value       = google_logging_folder_bucket_config.this.name
}

output "this" {
  value = google_logging_folder_bucket_config.this
}

