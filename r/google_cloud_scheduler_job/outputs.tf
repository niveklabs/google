output "id" {
  description = "returns a string"
  value       = google_cloud_scheduler_job.this.id
}

output "project" {
  description = "returns a string"
  value       = google_cloud_scheduler_job.this.project
}

output "region" {
  description = "returns a string"
  value       = google_cloud_scheduler_job.this.region
}

output "this" {
  value = google_cloud_scheduler_job.this
}

