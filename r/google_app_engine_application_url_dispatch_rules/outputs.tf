output "id" {
  description = "returns a string"
  value       = google_app_engine_application_url_dispatch_rules.this.id
}

output "project" {
  description = "returns a string"
  value       = google_app_engine_application_url_dispatch_rules.this.project
}

output "this" {
  value = google_app_engine_application_url_dispatch_rules.this
}

