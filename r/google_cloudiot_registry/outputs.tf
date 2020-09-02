output "http_config" {
  description = "returns a map of string"
  value       = google_cloudiot_registry.this.http_config
}

output "id" {
  description = "returns a string"
  value       = google_cloudiot_registry.this.id
}

output "mqtt_config" {
  description = "returns a map of string"
  value       = google_cloudiot_registry.this.mqtt_config
}

output "project" {
  description = "returns a string"
  value       = google_cloudiot_registry.this.project
}

output "region" {
  description = "returns a string"
  value       = google_cloudiot_registry.this.region
}

output "this" {
  value = google_cloudiot_registry.this
}

