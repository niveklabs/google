output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_region_backend_service.this.creation_timestamp
}

output "fingerprint" {
  description = "returns a string"
  value       = google_compute_region_backend_service.this.fingerprint
}

output "id" {
  description = "returns a string"
  value       = google_compute_region_backend_service.this.id
}

output "port_name" {
  description = "returns a string"
  value       = google_compute_region_backend_service.this.port_name
}

output "project" {
  description = "returns a string"
  value       = google_compute_region_backend_service.this.project
}

output "protocol" {
  description = "returns a string"
  value       = google_compute_region_backend_service.this.protocol
}

output "region" {
  description = "returns a string"
  value       = google_compute_region_backend_service.this.region
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_region_backend_service.this.self_link
}

output "session_affinity" {
  description = "returns a string"
  value       = google_compute_region_backend_service.this.session_affinity
}

output "timeout_sec" {
  description = "returns a number"
  value       = google_compute_region_backend_service.this.timeout_sec
}

output "this" {
  value = google_compute_region_backend_service.this
}

