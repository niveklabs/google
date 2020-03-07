output "charset" {
  description = "returns a string"
  value       = google_sql_database.this.charset
}

output "collation" {
  description = "returns a string"
  value       = google_sql_database.this.collation
}

output "id" {
  description = "returns a string"
  value       = google_sql_database.this.id
}

output "project" {
  description = "returns a string"
  value       = google_sql_database.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_sql_database.this.self_link
}

output "this" {
  value = google_sql_database.this
}

