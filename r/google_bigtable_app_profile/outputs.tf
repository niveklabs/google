output "id" {
  description = "returns a string"
  value       = google_bigtable_app_profile.this.id
}

output "name" {
  description = "returns a string"
  value       = google_bigtable_app_profile.this.name
}

output "project" {
  description = "returns a string"
  value       = google_bigtable_app_profile.this.project
}

output "this" {
  value = google_bigtable_app_profile.this
}

