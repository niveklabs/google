output "id" {
  description = "returns a string"
  value       = google_spanner_instance.this.id
}

output "name" {
  description = "returns a string"
  value       = google_spanner_instance.this.name
}

output "project" {
  description = "returns a string"
  value       = google_spanner_instance.this.project
}

output "state" {
  description = "returns a string"
  value       = google_spanner_instance.this.state
}

output "this" {
  value = google_spanner_instance.this
}

