output "bigquery_date_sharded_spec" {
  description = "returns a list of object"
  value       = google_data_catalog_entry.this.bigquery_date_sharded_spec
}

output "bigquery_table_spec" {
  description = "returns a list of object"
  value       = google_data_catalog_entry.this.bigquery_table_spec
}

output "id" {
  description = "returns a string"
  value       = google_data_catalog_entry.this.id
}

output "integrated_system" {
  description = "returns a string"
  value       = google_data_catalog_entry.this.integrated_system
}

output "linked_resource" {
  description = "returns a string"
  value       = google_data_catalog_entry.this.linked_resource
}

output "name" {
  description = "returns a string"
  value       = google_data_catalog_entry.this.name
}

output "this" {
  value = google_data_catalog_entry.this
}

