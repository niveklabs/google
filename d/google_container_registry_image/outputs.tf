output "id" {
  description = "returns a string"
  value       = data.google_container_registry_image.this.id
}

output "image_url" {
  description = "returns a string"
  value       = data.google_container_registry_image.this.image_url
}

output "project" {
  description = "returns a string"
  value       = data.google_container_registry_image.this.project
}

output "this" {
  value = google_container_registry_image.this
}

