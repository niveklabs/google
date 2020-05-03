output "api_version" {
  description = "returns a string"
  value       = google_dialogflow_agent.this.api_version
}

output "avatar_uri_backend" {
  description = "returns a string"
  value       = google_dialogflow_agent.this.avatar_uri_backend
}

output "id" {
  description = "returns a string"
  value       = google_dialogflow_agent.this.id
}

output "match_mode" {
  description = "returns a string"
  value       = google_dialogflow_agent.this.match_mode
}

output "project" {
  description = "returns a string"
  value       = google_dialogflow_agent.this.project
}

output "this" {
  value = google_dialogflow_agent.this
}

