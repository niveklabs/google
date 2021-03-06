output "enrolled_ancestor" {
  description = "returns a bool"
  value       = google_organization_access_approval_settings.this.enrolled_ancestor
}

output "id" {
  description = "returns a string"
  value       = google_organization_access_approval_settings.this.id
}

output "name" {
  description = "returns a string"
  value       = google_organization_access_approval_settings.this.name
}

output "notification_emails" {
  description = "returns a set of string"
  value       = google_organization_access_approval_settings.this.notification_emails
}

output "this" {
  value = google_organization_access_approval_settings.this
}

