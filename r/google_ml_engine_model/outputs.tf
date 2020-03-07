output "id" {
  description = "returns a string"
  value       = google_ml_engine_model.this.id
}

output "project" {
  description = "returns a string"
  value       = google_ml_engine_model.this.project
}

output "this" {
  value = google_ml_engine_model.this
}

