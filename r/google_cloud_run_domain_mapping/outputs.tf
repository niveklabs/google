output "id" {
  description = "returns a string"
  value       = google_cloud_run_domain_mapping.this.id
}

output "project" {
  description = "returns a string"
  value       = google_cloud_run_domain_mapping.this.project
}

output "status" {
  description = "returns a list of object"
  value       = google_cloud_run_domain_mapping.this.status
}

output "this" {
  value = google_cloud_run_domain_mapping.this
}

