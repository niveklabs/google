output "id" {
  description = "returns a string"
  value       = google_dataflow_job.this.id
}

output "job_id" {
  description = "returns a string"
  value       = google_dataflow_job.this.job_id
}

output "project" {
  description = "returns a string"
  value       = google_dataflow_job.this.project
}

output "state" {
  description = "returns a string"
  value       = google_dataflow_job.this.state
}

output "type" {
  description = "returns a string"
  value       = google_dataflow_job.this.type
}

output "this" {
  value = google_dataflow_job.this
}

