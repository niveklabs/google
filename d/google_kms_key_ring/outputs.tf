output "id" {
  description = "returns a string"
  value       = data.google_kms_key_ring.this.id
}

output "self_link" {
  description = "returns a string"
  value       = data.google_kms_key_ring.this.self_link
}

output "this" {
  value = google_kms_key_ring.this
}

