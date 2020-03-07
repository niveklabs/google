output "bucket_self_link" {
  description = "returns a string"
  value       = google_container_registry.this.bucket_self_link
}

output "id" {
  description = "returns a string"
  value       = google_container_registry.this.id
}

output "project" {
  description = "returns a string"
  value       = google_container_registry.this.project
}

output "this" {
  value = google_container_registry.this
}

