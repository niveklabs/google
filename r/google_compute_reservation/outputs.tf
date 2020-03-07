output "commitment" {
  description = "returns a string"
  value       = google_compute_reservation.this.commitment
}

output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_reservation.this.creation_timestamp
}

output "id" {
  description = "returns a string"
  value       = google_compute_reservation.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_reservation.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_reservation.this.self_link
}

output "status" {
  description = "returns a string"
  value       = google_compute_reservation.this.status
}

output "this" {
  value = google_compute_reservation.this
}

