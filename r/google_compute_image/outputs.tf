output "archive_size_bytes" {
  description = "returns a number"
  value       = google_compute_image.this.archive_size_bytes
}

output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_image.this.creation_timestamp
}

output "disk_size_gb" {
  description = "returns a number"
  value       = google_compute_image.this.disk_size_gb
}

output "id" {
  description = "returns a string"
  value       = google_compute_image.this.id
}

output "label_fingerprint" {
  description = "returns a string"
  value       = google_compute_image.this.label_fingerprint
}

output "licenses" {
  description = "returns a list of string"
  value       = google_compute_image.this.licenses
}

output "project" {
  description = "returns a string"
  value       = google_compute_image.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_image.this.self_link
}

output "this" {
  value = google_compute_image.this
}

