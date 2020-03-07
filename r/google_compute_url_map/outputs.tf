output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_url_map.this.creation_timestamp
}

output "fingerprint" {
  description = "returns a string"
  value       = google_compute_url_map.this.fingerprint
}

output "id" {
  description = "returns a string"
  value       = google_compute_url_map.this.id
}

output "map_id" {
  description = "returns a number"
  value       = google_compute_url_map.this.map_id
}

output "project" {
  description = "returns a string"
  value       = google_compute_url_map.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_url_map.this.self_link
}

output "this" {
  value = google_compute_url_map.this
}

