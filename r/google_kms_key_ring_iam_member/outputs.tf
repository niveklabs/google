output "etag" {
  description = "returns a string"
  value       = google_kms_key_ring_iam_member.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_kms_key_ring_iam_member.this.id
}

output "this" {
  value = google_kms_key_ring_iam_member.this
}

