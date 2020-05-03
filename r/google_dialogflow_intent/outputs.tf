output "action" {
  description = "returns a string"
  value       = google_dialogflow_intent.this.action
}

output "followup_intent_info" {
  description = "returns a list of object"
  value       = google_dialogflow_intent.this.followup_intent_info
}

output "id" {
  description = "returns a string"
  value       = google_dialogflow_intent.this.id
}

output "is_fallback" {
  description = "returns a bool"
  value       = google_dialogflow_intent.this.is_fallback
}

output "ml_disabled" {
  description = "returns a bool"
  value       = google_dialogflow_intent.this.ml_disabled
}

output "name" {
  description = "returns a string"
  value       = google_dialogflow_intent.this.name
}

output "parent_followup_intent_name" {
  description = "returns a string"
  value       = google_dialogflow_intent.this.parent_followup_intent_name
}

output "priority" {
  description = "returns a number"
  value       = google_dialogflow_intent.this.priority
}

output "project" {
  description = "returns a string"
  value       = google_dialogflow_intent.this.project
}

output "reset_contexts" {
  description = "returns a bool"
  value       = google_dialogflow_intent.this.reset_contexts
}

output "root_followup_intent_name" {
  description = "returns a string"
  value       = google_dialogflow_intent.this.root_followup_intent_name
}

output "webhook_state" {
  description = "returns a string"
  value       = google_dialogflow_intent.this.webhook_state
}

output "this" {
  value = google_dialogflow_intent.this
}

