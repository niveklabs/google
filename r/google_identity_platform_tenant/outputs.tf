output "id" {
  description = "returns a string"
  value       = google_identity_platform_tenant.this.id
}

output "name" {
  description = "returns a string"
  value       = google_identity_platform_tenant.this.name
}

output "project" {
  description = "returns a string"
  value       = google_identity_platform_tenant.this.project
}

output "this" {
  value = google_identity_platform_tenant.this
}

