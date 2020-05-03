output "https_trigger_url" {
  description = "returns a string"
  value       = google_cloudfunctions_function.this.https_trigger_url
}

output "id" {
  description = "returns a string"
  value       = google_cloudfunctions_function.this.id
}

output "project" {
  description = "returns a string"
  value       = google_cloudfunctions_function.this.project
}

output "region" {
  description = "returns a string"
  value       = google_cloudfunctions_function.this.region
}

output "service_account_email" {
  description = "returns a string"
  value       = google_cloudfunctions_function.this.service_account_email
}

output "vpc_connector_egress_settings" {
  description = "returns a string"
  value       = google_cloudfunctions_function.this.vpc_connector_egress_settings
}

output "this" {
  value = google_cloudfunctions_function.this
}

