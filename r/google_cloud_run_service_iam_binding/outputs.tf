output "etag" {
  description = "returns a string"
  value       = google_cloud_run_service_iam_binding.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_cloud_run_service_iam_binding.this.id
}

output "location" {
  description = "returns a string"
  value       = google_cloud_run_service_iam_binding.this.location
}

output "project" {
  description = "returns a string"
  value       = google_cloud_run_service_iam_binding.this.project
}

output "this" {
  value = google_cloud_run_service_iam_binding.this
}

