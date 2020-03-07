output "id" {
  description = "returns a string"
  value       = google_cloud_run_service.this.id
}

output "project" {
  description = "returns a string"
  value       = google_cloud_run_service.this.project
}

output "status" {
  description = "returns a list of object"
  value       = google_cloud_run_service.this.status
}

output "this" {
  value = google_cloud_run_service.this
}

