output "id" {
  description = "returns a string"
  value       = google_service_networking_connection.this.id
}

output "peering" {
  description = "returns a string"
  value       = google_service_networking_connection.this.peering
}

output "this" {
  value = google_service_networking_connection.this
}

