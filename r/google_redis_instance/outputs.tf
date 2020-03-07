output "alternative_location_id" {
  description = "returns a string"
  value       = google_redis_instance.this.alternative_location_id
}

output "authorized_network" {
  description = "returns a string"
  value       = google_redis_instance.this.authorized_network
}

output "create_time" {
  description = "returns a string"
  value       = google_redis_instance.this.create_time
}

output "current_location_id" {
  description = "returns a string"
  value       = google_redis_instance.this.current_location_id
}

output "host" {
  description = "returns a string"
  value       = google_redis_instance.this.host
}

output "id" {
  description = "returns a string"
  value       = google_redis_instance.this.id
}

output "location_id" {
  description = "returns a string"
  value       = google_redis_instance.this.location_id
}

output "port" {
  description = "returns a number"
  value       = google_redis_instance.this.port
}

output "project" {
  description = "returns a string"
  value       = google_redis_instance.this.project
}

output "redis_version" {
  description = "returns a string"
  value       = google_redis_instance.this.redis_version
}

output "region" {
  description = "returns a string"
  value       = google_redis_instance.this.region
}

output "reserved_ip_range" {
  description = "returns a string"
  value       = google_redis_instance.this.reserved_ip_range
}

output "this" {
  value = google_redis_instance.this
}

