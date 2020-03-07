output "cpu_platform" {
  description = "returns a string"
  value       = google_compute_instance.this.cpu_platform
}

output "guest_accelerator" {
  description = "returns a list of object"
  value       = google_compute_instance.this.guest_accelerator
}

output "id" {
  description = "returns a string"
  value       = google_compute_instance.this.id
}

output "instance_id" {
  description = "returns a string"
  value       = google_compute_instance.this.instance_id
}

output "label_fingerprint" {
  description = "returns a string"
  value       = google_compute_instance.this.label_fingerprint
}

output "metadata_fingerprint" {
  description = "returns a string"
  value       = google_compute_instance.this.metadata_fingerprint
}

output "min_cpu_platform" {
  description = "returns a string"
  value       = google_compute_instance.this.min_cpu_platform
}

output "project" {
  description = "returns a string"
  value       = google_compute_instance.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_instance.this.self_link
}

output "tags_fingerprint" {
  description = "returns a string"
  value       = google_compute_instance.this.tags_fingerprint
}

output "zone" {
  description = "returns a string"
  value       = google_compute_instance.this.zone
}

output "this" {
  value = google_compute_instance.this
}

