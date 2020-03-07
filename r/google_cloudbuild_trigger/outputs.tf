output "create_time" {
  description = "returns a string"
  value       = google_cloudbuild_trigger.this.create_time
}

output "id" {
  description = "returns a string"
  value       = google_cloudbuild_trigger.this.id
}

output "name" {
  description = "returns a string"
  value       = google_cloudbuild_trigger.this.name
}

output "project" {
  description = "returns a string"
  value       = google_cloudbuild_trigger.this.project
}

output "trigger_id" {
  description = "returns a string"
  value       = google_cloudbuild_trigger.this.trigger_id
}

output "this" {
  value = google_cloudbuild_trigger.this
}

