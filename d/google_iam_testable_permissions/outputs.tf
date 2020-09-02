output "id" {
  description = "returns a string"
  value       = data.google_iam_testable_permissions.this.id
}

output "permissions" {
  description = "returns a list of object"
  value       = data.google_iam_testable_permissions.this.permissions
}

output "this" {
  value = google_iam_testable_permissions.this
}

