output "alternative_location_id" {
  description = "returns a string"
  value       = data.google_redis_instance.this.alternative_location_id
}

output "authorized_network" {
  description = "returns a string"
  value       = data.google_redis_instance.this.authorized_network
}

output "connect_mode" {
  description = "returns a string"
  value       = data.google_redis_instance.this.connect_mode
}

output "create_time" {
  description = "returns a string"
  value       = data.google_redis_instance.this.create_time
}

output "current_location_id" {
  description = "returns a string"
  value       = data.google_redis_instance.this.current_location_id
}

output "display_name" {
  description = "returns a string"
  value       = data.google_redis_instance.this.display_name
}

output "host" {
  description = "returns a string"
  value       = data.google_redis_instance.this.host
}

output "id" {
  description = "returns a string"
  value       = data.google_redis_instance.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.google_redis_instance.this.labels
}

output "location_id" {
  description = "returns a string"
  value       = data.google_redis_instance.this.location_id
}

output "memory_size_gb" {
  description = "returns a number"
  value       = data.google_redis_instance.this.memory_size_gb
}

output "persistence_iam_identity" {
  description = "returns a string"
  value       = data.google_redis_instance.this.persistence_iam_identity
}

output "port" {
  description = "returns a number"
  value       = data.google_redis_instance.this.port
}

output "redis_configs" {
  description = "returns a map of string"
  value       = data.google_redis_instance.this.redis_configs
}

output "redis_version" {
  description = "returns a string"
  value       = data.google_redis_instance.this.redis_version
}

output "reserved_ip_range" {
  description = "returns a string"
  value       = data.google_redis_instance.this.reserved_ip_range
}

output "tier" {
  description = "returns a string"
  value       = data.google_redis_instance.this.tier
}

output "this" {
  value = google_redis_instance.this
}

