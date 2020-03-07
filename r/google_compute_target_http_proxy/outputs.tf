output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_target_http_proxy.this.creation_timestamp
}

output "id" {
  description = "returns a string"
  value       = google_compute_target_http_proxy.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_target_http_proxy.this.project
}

output "proxy_id" {
  description = "returns a number"
  value       = google_compute_target_http_proxy.this.proxy_id
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_target_http_proxy.this.self_link
}

output "this" {
  value = google_compute_target_http_proxy.this
}

