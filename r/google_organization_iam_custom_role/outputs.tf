output "deleted" {
  description = "returns a bool"
  value       = google_organization_iam_custom_role.this.deleted
}

output "id" {
  description = "returns a string"
  value       = google_organization_iam_custom_role.this.id
}

output "this" {
  value = google_organization_iam_custom_role.this
}

