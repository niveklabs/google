output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_region_disk.this.creation_timestamp
}

output "id" {
  description = "returns a string"
  value       = google_compute_region_disk.this.id
}

output "label_fingerprint" {
  description = "returns a string"
  value       = google_compute_region_disk.this.label_fingerprint
}

output "last_attach_timestamp" {
  description = "returns a string"
  value       = google_compute_region_disk.this.last_attach_timestamp
}

output "last_detach_timestamp" {
  description = "returns a string"
  value       = google_compute_region_disk.this.last_detach_timestamp
}

output "physical_block_size_bytes" {
  description = "returns a number"
  value       = google_compute_region_disk.this.physical_block_size_bytes
}

output "project" {
  description = "returns a string"
  value       = google_compute_region_disk.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_region_disk.this.region
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_region_disk.this.self_link
}

output "size" {
  description = "returns a number"
  value       = google_compute_region_disk.this.size
}

output "source_snapshot_id" {
  description = "returns a string"
  value       = google_compute_region_disk.this.source_snapshot_id
}

output "users" {
  description = "returns a list of string"
  value       = google_compute_region_disk.this.users
}

output "this" {
  value = google_compute_region_disk.this
}

