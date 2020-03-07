output "id" {
  description = "returns a string"
  value       = data.google_active_folder.this.id
}

output "name" {
  description = "returns a string"
  value       = data.google_active_folder.this.name
}

output "this" {
  value = google_active_folder.this
}

