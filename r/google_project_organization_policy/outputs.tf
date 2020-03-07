output "etag" {
  description = "returns a string"
  value       = google_project_organization_policy.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_project_organization_policy.this.id
}

output "update_time" {
  description = "returns a string"
  value       = google_project_organization_policy.this.update_time
}

output "version" {
  description = "returns a number"
  value       = google_project_organization_policy.this.version
}

output "this" {
  value = google_project_organization_policy.this
}

