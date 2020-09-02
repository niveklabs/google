output "id" {
  description = "returns a string"
  value       = google_data_catalog_entry_group.this.id
}

output "name" {
  description = "returns a string"
  value       = google_data_catalog_entry_group.this.name
}

output "project" {
  description = "returns a string"
  value       = google_data_catalog_entry_group.this.project
}

output "region" {
  description = "returns a string"
  value       = google_data_catalog_entry_group.this.region
}

output "this" {
  value = google_data_catalog_entry_group.this
}

