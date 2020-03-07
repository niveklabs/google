output "device_name" {
  description = "returns a string"
  value       = google_compute_attached_disk.this.device_name
}

output "id" {
  description = "returns a string"
  value       = google_compute_attached_disk.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_attached_disk.this.project
}

output "zone" {
  description = "returns a string"
  value       = google_compute_attached_disk.this.zone
}

output "this" {
  value = google_compute_attached_disk.this
}

