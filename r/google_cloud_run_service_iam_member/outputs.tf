output "etag" {
  description = "returns a string"
  value       = google_cloud_run_service_iam_member.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_cloud_run_service_iam_member.this.id
}

output "location" {
  description = "returns a string"
  value       = google_cloud_run_service_iam_member.this.location
}

output "project" {
  description = "returns a string"
  value       = google_cloud_run_service_iam_member.this.project
}

output "this" {
  value = google_cloud_run_service_iam_member.this
}

