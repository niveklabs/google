output "id" {
  description = "returns a string"
  value       = google_data_catalog_tag.this.id
}

output "name" {
  description = "returns a string"
  value       = google_data_catalog_tag.this.name
}

output "template_displayname" {
  description = "returns a string"
  value       = google_data_catalog_tag.this.template_displayname
}

output "this" {
  value = google_data_catalog_tag.this
}

