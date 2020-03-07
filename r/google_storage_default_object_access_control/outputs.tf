output "domain" {
  description = "returns a string"
  value       = google_storage_default_object_access_control.this.domain
}

output "email" {
  description = "returns a string"
  value       = google_storage_default_object_access_control.this.email
}

output "entity_id" {
  description = "returns a string"
  value       = google_storage_default_object_access_control.this.entity_id
}

output "generation" {
  description = "returns a number"
  value       = google_storage_default_object_access_control.this.generation
}

output "id" {
  description = "returns a string"
  value       = google_storage_default_object_access_control.this.id
}

output "project_team" {
  description = "returns a list of object"
  value       = google_storage_default_object_access_control.this.project_team
}

output "this" {
  value = google_storage_default_object_access_control.this
}

