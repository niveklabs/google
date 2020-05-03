output "id" {
  description = "returns a string"
  value       = google_bigquery_job.this.id
}

output "job_type" {
  description = "returns a string"
  value       = google_bigquery_job.this.job_type
}

output "project" {
  description = "returns a string"
  value       = google_bigquery_job.this.project
}

output "user_email" {
  description = "returns a string"
  value       = google_bigquery_job.this.user_email
}

output "this" {
  value = google_bigquery_job.this
}

