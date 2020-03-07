output "creation_time" {
  description = "returns a string"
  value       = google_storage_transfer_job.this.creation_time
}

output "deletion_time" {
  description = "returns a string"
  value       = google_storage_transfer_job.this.deletion_time
}

output "id" {
  description = "returns a string"
  value       = google_storage_transfer_job.this.id
}

output "last_modification_time" {
  description = "returns a string"
  value       = google_storage_transfer_job.this.last_modification_time
}

output "name" {
  description = "returns a string"
  value       = google_storage_transfer_job.this.name
}

output "project" {
  description = "returns a string"
  value       = google_storage_transfer_job.this.project
}

output "this" {
  value = google_storage_transfer_job.this
}

