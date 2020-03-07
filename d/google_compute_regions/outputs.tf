output "id" {
  description = "returns a string"
  value       = data.google_compute_regions.this.id
}

output "names" {
  description = "returns a list of string"
  value       = data.google_compute_regions.this.names
}

output "project" {
  description = "returns a string"
  value       = data.google_compute_regions.this.project
}

output "this" {
  value = google_compute_regions.this
}

