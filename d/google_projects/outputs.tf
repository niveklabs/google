output "id" {
  description = "returns a string"
  value       = data.google_projects.this.id
}

output "projects" {
  description = "returns a list of object"
  value       = data.google_projects.this.projects
}

output "this" {
  value = google_projects.this
}

