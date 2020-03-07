output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_disk.this.creation_timestamp
}

output "id" {
  description = "returns a string"
  value       = google_compute_disk.this.id
}

output "label_fingerprint" {
  description = "returns a string"
  value       = google_compute_disk.this.label_fingerprint
}

output "last_attach_timestamp" {
  description = "returns a string"
  value       = google_compute_disk.this.last_attach_timestamp
}

output "last_detach_timestamp" {
  description = "returns a string"
  value       = google_compute_disk.this.last_detach_timestamp
}

output "physical_block_size_bytes" {
  description = "returns a number"
  value       = google_compute_disk.this.physical_block_size_bytes
}

output "project" {
  description = "returns a string"
  value       = google_compute_disk.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_disk.this.self_link
}

output "size" {
  description = "returns a number"
  value       = google_compute_disk.this.size
}

output "source_image_id" {
  description = "returns a string"
  value       = google_compute_disk.this.source_image_id
}

output "source_snapshot_id" {
  description = "returns a string"
  value       = google_compute_disk.this.source_snapshot_id
}

output "users" {
  description = "returns a list of string"
  value       = google_compute_disk.this.users
}

output "zone" {
  description = "returns a string"
  value       = google_compute_disk.this.zone
}

output "this" {
  value = google_compute_disk.this
}

