output "id" {
  description = "returns a string"
  value       = google_compute_disk_resource_policy_attachment.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_disk_resource_policy_attachment.this.project
}

output "zone" {
  description = "returns a string"
  value       = google_compute_disk_resource_policy_attachment.this.zone
}

output "this" {
  value = google_compute_disk_resource_policy_attachment.this
}

