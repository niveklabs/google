output "id" {
  description = "returns a string"
  value       = data.google_composer_image_versions.this.id
}

output "image_versions" {
  description = "returns a list of object"
  value       = data.google_composer_image_versions.this.image_versions
}

output "project" {
  description = "returns a string"
  value       = data.google_composer_image_versions.this.project
}

output "region" {
  description = "returns a string"
  value       = data.google_composer_image_versions.this.region
}

output "this" {
  value = google_composer_image_versions.this
}

