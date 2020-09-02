output "attestation" {
  description = "returns a list of object"
  value       = google_kms_key_ring_import_job.this.attestation
}

output "expire_time" {
  description = "returns a string"
  value       = google_kms_key_ring_import_job.this.expire_time
}

output "id" {
  description = "returns a string"
  value       = google_kms_key_ring_import_job.this.id
}

output "name" {
  description = "returns a string"
  value       = google_kms_key_ring_import_job.this.name
}

output "public_key" {
  description = "returns a list of object"
  value       = google_kms_key_ring_import_job.this.public_key
}

output "state" {
  description = "returns a string"
  value       = google_kms_key_ring_import_job.this.state
}

output "this" {
  value = google_kms_key_ring_import_job.this
}

