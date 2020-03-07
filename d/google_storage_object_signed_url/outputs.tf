output "id" {
  description = "returns a string"
  value       = data.google_storage_object_signed_url.this.id
}

output "signed_url" {
  description = "returns a string"
  value       = data.google_storage_object_signed_url.this.signed_url
}

output "this" {
  value = google_storage_object_signed_url.this
}

