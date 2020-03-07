output "id" {
  description = "returns a string"
  value       = google_compute_instance_template.this.id
}

output "metadata_fingerprint" {
  description = "returns a string"
  value       = google_compute_instance_template.this.metadata_fingerprint
}

output "name" {
  description = "returns a string"
  value       = google_compute_instance_template.this.name
}

output "name_prefix" {
  description = "returns a string"
  value       = google_compute_instance_template.this.name_prefix
}

output "project" {
  description = "returns a string"
  value       = google_compute_instance_template.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_instance_template.this.region
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_instance_template.this.self_link
}

output "tags_fingerprint" {
  description = "returns a string"
  value       = google_compute_instance_template.this.tags_fingerprint
}

output "this" {
  value = google_compute_instance_template.this
}

