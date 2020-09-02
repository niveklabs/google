output "etag" {
  description = "returns a string"
  value       = google_compute_region_disk_iam_binding.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_compute_region_disk_iam_binding.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_region_disk_iam_binding.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_region_disk_iam_binding.this.region
}

output "this" {
  value = google_compute_region_disk_iam_binding.this
}

