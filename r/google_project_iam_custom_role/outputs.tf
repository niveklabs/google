output "deleted" {
  description = "returns a bool"
  value       = google_project_iam_custom_role.this.deleted
}

output "id" {
  description = "returns a string"
  value       = google_project_iam_custom_role.this.id
}

output "name" {
  description = "returns a string"
  value       = google_project_iam_custom_role.this.name
}

output "project" {
  description = "returns a string"
  value       = google_project_iam_custom_role.this.project
}

output "this" {
  value = google_project_iam_custom_role.this
}

