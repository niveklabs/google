output "id" {
  description = "returns a string"
  value       = google_compute_region_disk_resource_policy_attachment.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_region_disk_resource_policy_attachment.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_region_disk_resource_policy_attachment.this.region
}

output "this" {
  value = google_compute_region_disk_resource_policy_attachment.this
}

