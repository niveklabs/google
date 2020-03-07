output "etag" {
  description = "returns a string"
  value       = google_organization_iam_audit_config.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_organization_iam_audit_config.this.id
}

output "this" {
  value = google_organization_iam_audit_config.this
}

