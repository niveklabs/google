output "id" {
  description = "returns a string"
  value       = google_app_engine_domain_mapping.this.id
}

output "name" {
  description = "returns a string"
  value       = google_app_engine_domain_mapping.this.name
}

output "project" {
  description = "returns a string"
  value       = google_app_engine_domain_mapping.this.project
}

output "resource_records" {
  description = "returns a list of object"
  value       = google_app_engine_domain_mapping.this.resource_records
}

output "this" {
  value = google_app_engine_domain_mapping.this
}

