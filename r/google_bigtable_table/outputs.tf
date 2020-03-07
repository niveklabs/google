output "id" {
  description = "returns a string"
  value       = google_bigtable_table.this.id
}

output "project" {
  description = "returns a string"
  value       = google_bigtable_table.this.project
}

output "this" {
  value = google_bigtable_table.this
}

