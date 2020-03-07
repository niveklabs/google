output "boolean_policy" {
  description = "returns a list of object"
  value       = data.google_project_organization_policy.this.boolean_policy
}

output "etag" {
  description = "returns a string"
  value       = data.google_project_organization_policy.this.etag
}

output "id" {
  description = "returns a string"
  value       = data.google_project_organization_policy.this.id
}

output "list_policy" {
  description = "returns a list of object"
  value       = data.google_project_organization_policy.this.list_policy
}

output "restore_policy" {
  description = "returns a list of object"
  value       = data.google_project_organization_policy.this.restore_policy
}

output "update_time" {
  description = "returns a string"
  value       = data.google_project_organization_policy.this.update_time
}

output "version" {
  description = "returns a number"
  value       = data.google_project_organization_policy.this.version
}

output "this" {
  value = google_project_organization_policy.this
}

