output "id" {
  description = "returns a string"
  value       = google_spanner_database.this.id
}

output "project" {
  description = "returns a string"
  value       = google_spanner_database.this.project
}

output "state" {
  description = "returns a string"
  value       = google_spanner_database.this.state
}

output "this" {
  value = google_spanner_database.this
}

