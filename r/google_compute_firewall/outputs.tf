output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_firewall.this.creation_timestamp
}

output "destination_ranges" {
  description = "returns a set of string"
  value       = google_compute_firewall.this.destination_ranges
}

output "direction" {
  description = "returns a string"
  value       = google_compute_firewall.this.direction
}

output "id" {
  description = "returns a string"
  value       = google_compute_firewall.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_firewall.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_firewall.this.self_link
}

output "source_ranges" {
  description = "returns a set of string"
  value       = google_compute_firewall.this.source_ranges
}

output "this" {
  value = google_compute_firewall.this
}

