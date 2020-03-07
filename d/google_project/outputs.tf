output "auto_create_network" {
  description = "returns a bool"
  value       = data.google_project.this.auto_create_network
}

output "billing_account" {
  description = "returns a string"
  value       = data.google_project.this.billing_account
}

output "folder_id" {
  description = "returns a string"
  value       = data.google_project.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.google_project.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.google_project.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.google_project.this.name
}

output "number" {
  description = "returns a string"
  value       = data.google_project.this.number
}

output "org_id" {
  description = "returns a string"
  value       = data.google_project.this.org_id
}

output "skip_delete" {
  description = "returns a bool"
  value       = data.google_project.this.skip_delete
}

output "this" {
  value = google_project.this
}

