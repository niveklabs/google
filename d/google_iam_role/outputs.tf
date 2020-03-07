output "id" {
  description = "returns a string"
  value       = data.google_iam_role.this.id
}

output "included_permissions" {
  description = "returns a list of string"
  value       = data.google_iam_role.this.included_permissions
}

output "stage" {
  description = "returns a string"
  value       = data.google_iam_role.this.stage
}

output "title" {
  description = "returns a string"
  value       = data.google_iam_role.this.title
}

output "this" {
  value = google_iam_role.this
}

