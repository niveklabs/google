output "content_type" {
  description = "returns a string"
  value       = google_storage_bucket_object.this.content_type
}

output "crc32c" {
  description = "returns a string"
  value       = google_storage_bucket_object.this.crc32c
}

output "id" {
  description = "returns a string"
  value       = google_storage_bucket_object.this.id
}

output "md5hash" {
  description = "returns a string"
  value       = google_storage_bucket_object.this.md5hash
}

output "media_link" {
  description = "returns a string"
  value       = google_storage_bucket_object.this.media_link
}

output "output_name" {
  description = "returns a string"
  value       = google_storage_bucket_object.this.output_name
}

output "self_link" {
  description = "returns a string"
  value       = google_storage_bucket_object.this.self_link
}

output "storage_class" {
  description = "returns a string"
  value       = google_storage_bucket_object.this.storage_class
}

output "this" {
  value = google_storage_bucket_object.this
}

