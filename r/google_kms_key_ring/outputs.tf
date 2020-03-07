output "id" {
  description = "returns a string"
  value       = google_kms_key_ring.this.id
}

output "project" {
  description = "returns a string"
  value       = google_kms_key_ring.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_kms_key_ring.this.self_link
}

output "this" {
  value = google_kms_key_ring.this
}

