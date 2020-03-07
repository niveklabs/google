output "create_time" {
  description = "returns a string"
  value       = google_folder.this.create_time
}

output "id" {
  description = "returns a string"
  value       = google_folder.this.id
}

output "lifecycle_state" {
  description = "returns a string"
  value       = google_folder.this.lifecycle_state
}

output "name" {
  description = "returns a string"
  value       = google_folder.this.name
}

output "this" {
  value = google_folder.this
}

