output "app_id" {
  description = "returns a string"
  value       = google_app_engine_application.this.app_id
}

output "auth_domain" {
  description = "returns a string"
  value       = google_app_engine_application.this.auth_domain
}

output "code_bucket" {
  description = "returns a string"
  value       = google_app_engine_application.this.code_bucket
}

output "default_bucket" {
  description = "returns a string"
  value       = google_app_engine_application.this.default_bucket
}

output "default_hostname" {
  description = "returns a string"
  value       = google_app_engine_application.this.default_hostname
}

output "gcr_domain" {
  description = "returns a string"
  value       = google_app_engine_application.this.gcr_domain
}

output "id" {
  description = "returns a string"
  value       = google_app_engine_application.this.id
}

output "name" {
  description = "returns a string"
  value       = google_app_engine_application.this.name
}

output "project" {
  description = "returns a string"
  value       = google_app_engine_application.this.project
}

output "serving_status" {
  description = "returns a string"
  value       = google_app_engine_application.this.serving_status
}

output "url_dispatch_rule" {
  description = "returns a list of object"
  value       = google_app_engine_application.this.url_dispatch_rule
}

output "this" {
  value = google_app_engine_application.this
}

