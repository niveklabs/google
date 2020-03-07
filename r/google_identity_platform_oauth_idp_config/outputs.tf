output "id" {
  description = "returns a string"
  value       = google_identity_platform_oauth_idp_config.this.id
}

output "project" {
  description = "returns a string"
  value       = google_identity_platform_oauth_idp_config.this.project
}

output "this" {
  value = google_identity_platform_oauth_idp_config.this
}

