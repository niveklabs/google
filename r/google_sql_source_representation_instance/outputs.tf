output "id" {
  description = "returns a string"
  value       = google_sql_source_representation_instance.this.id
}

output "project" {
  description = "returns a string"
  value       = google_sql_source_representation_instance.this.project
}

output "region" {
  description = "returns a string"
  value       = google_sql_source_representation_instance.this.region
}

output "this" {
  value = google_sql_source_representation_instance.this
}

