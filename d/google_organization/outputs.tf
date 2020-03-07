output "create_time" {
  description = "returns a string"
  value       = data.google_organization.this.create_time
}

output "directory_customer_id" {
  description = "returns a string"
  value       = data.google_organization.this.directory_customer_id
}

output "domain" {
  description = "returns a string"
  value       = data.google_organization.this.domain
}

output "id" {
  description = "returns a string"
  value       = data.google_organization.this.id
}

output "lifecycle_state" {
  description = "returns a string"
  value       = data.google_organization.this.lifecycle_state
}

output "name" {
  description = "returns a string"
  value       = data.google_organization.this.name
}

output "org_id" {
  description = "returns a string"
  value       = data.google_organization.this.org_id
}

output "this" {
  value = google_organization.this
}

