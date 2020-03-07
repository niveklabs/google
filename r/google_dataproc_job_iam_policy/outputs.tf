output "etag" {
  description = "returns a string"
  value       = google_dataproc_job_iam_policy.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_dataproc_job_iam_policy.this.id
}

output "project" {
  description = "returns a string"
  value       = google_dataproc_job_iam_policy.this.project
}

output "region" {
  description = "returns a string"
  value       = google_dataproc_job_iam_policy.this.region
}

output "this" {
  value = google_dataproc_job_iam_policy.this
}

