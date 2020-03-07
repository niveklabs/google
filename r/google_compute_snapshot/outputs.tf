output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_snapshot.this.creation_timestamp
}

output "disk_size_gb" {
  description = "returns a number"
  value       = google_compute_snapshot.this.disk_size_gb
}

output "id" {
  description = "returns a string"
  value       = google_compute_snapshot.this.id
}

output "label_fingerprint" {
  description = "returns a string"
  value       = google_compute_snapshot.this.label_fingerprint
}

output "licenses" {
  description = "returns a list of string"
  value       = google_compute_snapshot.this.licenses
}

output "project" {
  description = "returns a string"
  value       = google_compute_snapshot.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_snapshot.this.self_link
}

output "snapshot_id" {
  description = "returns a number"
  value       = google_compute_snapshot.this.snapshot_id
}

output "source_disk_link" {
  description = "returns a string"
  value       = google_compute_snapshot.this.source_disk_link
}

output "storage_bytes" {
  description = "returns a number"
  value       = google_compute_snapshot.this.storage_bytes
}

output "zone" {
  description = "returns a string"
  value       = google_compute_snapshot.this.zone
}

output "this" {
  value = google_compute_snapshot.this
}

