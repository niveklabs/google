output "id" {
  description = "returns a string"
  value       = data.google_tpu_tensorflow_versions.this.id
}

output "project" {
  description = "returns a string"
  value       = data.google_tpu_tensorflow_versions.this.project
}

output "versions" {
  description = "returns a list of string"
  value       = data.google_tpu_tensorflow_versions.this.versions
}

output "zone" {
  description = "returns a string"
  value       = data.google_tpu_tensorflow_versions.this.zone
}

output "this" {
  value = google_tpu_tensorflow_versions.this
}

