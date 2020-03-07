output "etag" {
  description = "returns a string"
  value       = google_spanner_instance_iam_member.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_spanner_instance_iam_member.this.id
}

output "project" {
  description = "returns a string"
  value       = google_spanner_instance_iam_member.this.project
}

output "this" {
  value = google_spanner_instance_iam_member.this
}

