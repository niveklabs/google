output "etag" {
  description = "returns a string"
  value       = google_healthcare_dataset_iam_member.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_healthcare_dataset_iam_member.this.id
}

output "this" {
  value = google_healthcare_dataset_iam_member.this
}

