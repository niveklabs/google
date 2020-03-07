output "id" {
  description = "returns a string"
  value       = google_logging_project_sink.this.id
}

output "project" {
  description = "returns a string"
  value       = google_logging_project_sink.this.project
}

output "writer_identity" {
  description = "returns a string"
  value       = google_logging_project_sink.this.writer_identity
}

output "this" {
  value = google_logging_project_sink.this
}

