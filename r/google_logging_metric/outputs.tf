output "id" {
  description = "returns a string"
  value       = google_logging_metric.this.id
}

output "project" {
  description = "returns a string"
  value       = google_logging_metric.this.project
}

output "this" {
  value = google_logging_metric.this
}

