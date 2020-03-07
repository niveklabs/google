output "id" {
  description = "returns a string"
  value       = google_dataproc_autoscaling_policy.this.id
}

output "name" {
  description = "returns a string"
  value       = google_dataproc_autoscaling_policy.this.name
}

output "project" {
  description = "returns a string"
  value       = google_dataproc_autoscaling_policy.this.project
}

output "this" {
  value = google_dataproc_autoscaling_policy.this
}

