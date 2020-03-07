output "global_policy_evaluation_mode" {
  description = "returns a string"
  value       = google_binary_authorization_policy.this.global_policy_evaluation_mode
}

output "id" {
  description = "returns a string"
  value       = google_binary_authorization_policy.this.id
}

output "project" {
  description = "returns a string"
  value       = google_binary_authorization_policy.this.project
}

output "this" {
  value = google_binary_authorization_policy.this
}

