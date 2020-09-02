output "create_time" {
  description = "returns a string"
  value       = data.google_folder.this.create_time
}

output "display_name" {
  description = "returns a string"
  value       = data.google_folder.this.display_name
}

output "folder_id" {
  description = "returns a string"
  value       = data.google_folder.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.google_folder.this.id
}

output "lifecycle_state" {
  description = "returns a string"
  value       = data.google_folder.this.lifecycle_state
}

output "name" {
  description = "returns a string"
  value       = data.google_folder.this.name
}

output "organization" {
  description = "returns a string"
  value       = data.google_folder.this.organization
}

output "parent" {
  description = "returns a string"
  value       = data.google_folder.this.parent
}

output "this" {
  value = google_folder.this
}

