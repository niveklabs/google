output "http_ssl_tcp_internal" {
  description = "returns a list of string"
  value       = data.google_compute_lb_ip_ranges.this.http_ssl_tcp_internal
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_lb_ip_ranges.this.id
}

output "network" {
  description = "returns a list of string"
  value       = data.google_compute_lb_ip_ranges.this.network
}

output "this" {
  value = google_compute_lb_ip_ranges.this
}

