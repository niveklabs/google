output "etag" {
  description = "returns a string"
  value       = google_bigtable_instance_iam_policy.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_bigtable_instance_iam_policy.this.id
}

output "project" {
  description = "returns a string"
  value       = google_bigtable_instance_iam_policy.this.project
}

output "this" {
  value = google_bigtable_instance_iam_policy.this
}

