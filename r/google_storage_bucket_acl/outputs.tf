output "id" {
  description = "returns a string"
  value       = google_storage_bucket_acl.this.id
}

output "role_entity" {
  description = "returns a list of string"
  value       = google_storage_bucket_acl.this.role_entity
}

output "this" {
  value = google_storage_bucket_acl.this
}

