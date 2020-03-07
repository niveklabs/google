output "folder_id" {
  description = "returns a string"
  value       = google_project.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = google_project.this.id
}

output "number" {
  description = "returns a string"
  value       = google_project.this.number
}

output "org_id" {
  description = "returns a string"
  value       = google_project.this.org_id
}

output "skip_delete" {
  description = "returns a bool"
  value       = google_project.this.skip_delete
}

output "this" {
  value = google_project.this
}

