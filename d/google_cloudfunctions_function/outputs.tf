output "available_memory_mb" {
  description = "returns a number"
  value       = data.google_cloudfunctions_function.this.available_memory_mb
}

output "description" {
  description = "returns a string"
  value       = data.google_cloudfunctions_function.this.description
}

output "entry_point" {
  description = "returns a string"
  value       = data.google_cloudfunctions_function.this.entry_point
}

output "environment_variables" {
  description = "returns a map of string"
  value       = data.google_cloudfunctions_function.this.environment_variables
}

output "event_trigger" {
  description = "returns a list of object"
  value       = data.google_cloudfunctions_function.this.event_trigger
}

output "https_trigger_url" {
  description = "returns a string"
  value       = data.google_cloudfunctions_function.this.https_trigger_url
}

output "id" {
  description = "returns a string"
  value       = data.google_cloudfunctions_function.this.id
}

output "ingress_settings" {
  description = "returns a string"
  value       = data.google_cloudfunctions_function.this.ingress_settings
}

output "labels" {
  description = "returns a map of string"
  value       = data.google_cloudfunctions_function.this.labels
}

output "max_instances" {
  description = "returns a number"
  value       = data.google_cloudfunctions_function.this.max_instances
}

output "runtime" {
  description = "returns a string"
  value       = data.google_cloudfunctions_function.this.runtime
}

output "service_account_email" {
  description = "returns a string"
  value       = data.google_cloudfunctions_function.this.service_account_email
}

output "source_archive_bucket" {
  description = "returns a string"
  value       = data.google_cloudfunctions_function.this.source_archive_bucket
}

output "source_archive_object" {
  description = "returns a string"
  value       = data.google_cloudfunctions_function.this.source_archive_object
}

output "source_repository" {
  description = "returns a list of object"
  value       = data.google_cloudfunctions_function.this.source_repository
}

output "timeout" {
  description = "returns a number"
  value       = data.google_cloudfunctions_function.this.timeout
}

output "trigger_http" {
  description = "returns a bool"
  value       = data.google_cloudfunctions_function.this.trigger_http
}

output "vpc_connector" {
  description = "returns a string"
  value       = data.google_cloudfunctions_function.this.vpc_connector
}

output "vpc_connector_egress_settings" {
  description = "returns a string"
  value       = data.google_cloudfunctions_function.this.vpc_connector_egress_settings
}

output "this" {
  value = google_cloudfunctions_function.this
}

