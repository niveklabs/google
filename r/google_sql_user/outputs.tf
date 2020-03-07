output "id" {
  description = "returns a string"
  value       = google_sql_user.this.id
}

output "project" {
  description = "returns a string"
  value       = google_sql_user.this.project
}

output "this" {
  value = google_sql_user.this
}

