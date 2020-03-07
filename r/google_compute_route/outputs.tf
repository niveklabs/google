output "id" {
  description = "returns a string"
  value       = google_compute_route.this.id
}

output "next_hop_ip" {
  description = "returns a string"
  value       = google_compute_route.this.next_hop_ip
}

output "next_hop_network" {
  description = "returns a string"
  value       = google_compute_route.this.next_hop_network
}

output "project" {
  description = "returns a string"
  value       = google_compute_route.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_route.this.self_link
}

output "this" {
  value = google_compute_route.this
}

