output "display_name" {
  description = "returns a string"
  value       = google_bigtable_instance.this.display_name
}

output "id" {
  description = "returns a string"
  value       = google_bigtable_instance.this.id
}

output "project" {
  description = "returns a string"
  value       = google_bigtable_instance.this.project
}

output "this" {
  value = google_bigtable_instance.this
}

