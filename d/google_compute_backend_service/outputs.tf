output "affinity_cookie_ttl_sec" {
  description = "returns a number"
  value       = data.google_compute_backend_service.this.affinity_cookie_ttl_sec
}

output "backend" {
  description = "returns a set of object"
  value       = data.google_compute_backend_service.this.backend
}

output "cdn_policy" {
  description = "returns a list of object"
  value       = data.google_compute_backend_service.this.cdn_policy
}

output "circuit_breakers" {
  description = "returns a list of object"
  value       = data.google_compute_backend_service.this.circuit_breakers
}

output "connection_draining_timeout_sec" {
  description = "returns a number"
  value       = data.google_compute_backend_service.this.connection_draining_timeout_sec
}

output "consistent_hash" {
  description = "returns a list of object"
  value       = data.google_compute_backend_service.this.consistent_hash
}

output "creation_timestamp" {
  description = "returns a string"
  value       = data.google_compute_backend_service.this.creation_timestamp
}

output "custom_request_headers" {
  description = "returns a set of string"
  value       = data.google_compute_backend_service.this.custom_request_headers
}

output "description" {
  description = "returns a string"
  value       = data.google_compute_backend_service.this.description
}

output "enable_cdn" {
  description = "returns a bool"
  value       = data.google_compute_backend_service.this.enable_cdn
}

output "fingerprint" {
  description = "returns a string"
  value       = data.google_compute_backend_service.this.fingerprint
}

output "health_checks" {
  description = "returns a set of string"
  value       = data.google_compute_backend_service.this.health_checks
}

output "iap" {
  description = "returns a list of object"
  value       = data.google_compute_backend_service.this.iap
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_backend_service.this.id
}

output "load_balancing_scheme" {
  description = "returns a string"
  value       = data.google_compute_backend_service.this.load_balancing_scheme
}

output "locality_lb_policy" {
  description = "returns a string"
  value       = data.google_compute_backend_service.this.locality_lb_policy
}

output "log_config" {
  description = "returns a list of object"
  value       = data.google_compute_backend_service.this.log_config
}

output "outlier_detection" {
  description = "returns a list of object"
  value       = data.google_compute_backend_service.this.outlier_detection
}

output "port_name" {
  description = "returns a string"
  value       = data.google_compute_backend_service.this.port_name
}

output "protocol" {
  description = "returns a string"
  value       = data.google_compute_backend_service.this.protocol
}

output "security_policy" {
  description = "returns a string"
  value       = data.google_compute_backend_service.this.security_policy
}

output "self_link" {
  description = "returns a string"
  value       = data.google_compute_backend_service.this.self_link
}

output "session_affinity" {
  description = "returns a string"
  value       = data.google_compute_backend_service.this.session_affinity
}

output "timeout_sec" {
  description = "returns a number"
  value       = data.google_compute_backend_service.this.timeout_sec
}

output "this" {
  value = google_compute_backend_service.this
}

