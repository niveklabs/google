output "driver_controls_files_uri" {
  description = "returns a string"
  value       = google_dataproc_job.this.driver_controls_files_uri
}

output "driver_output_resource_uri" {
  description = "returns a string"
  value       = google_dataproc_job.this.driver_output_resource_uri
}

output "id" {
  description = "returns a string"
  value       = google_dataproc_job.this.id
}

output "project" {
  description = "returns a string"
  value       = google_dataproc_job.this.project
}

output "status" {
  description = "returns a list of object"
  value       = google_dataproc_job.this.status
}

output "this" {
  value = google_dataproc_job.this
}

