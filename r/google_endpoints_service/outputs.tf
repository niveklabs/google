output "apis" {
  description = "returns a list of object"
  value       = google_endpoints_service.this.apis
}

output "config_id" {
  description = "returns a string"
  value       = google_endpoints_service.this.config_id
}

output "dns_address" {
  description = "returns a string"
  value       = google_endpoints_service.this.dns_address
}

output "endpoints" {
  description = "returns a list of object"
  value       = google_endpoints_service.this.endpoints
}

output "id" {
  description = "returns a string"
  value       = google_endpoints_service.this.id
}

output "project" {
  description = "returns a string"
  value       = google_endpoints_service.this.project
}

output "this" {
  value = google_endpoints_service.this
}

