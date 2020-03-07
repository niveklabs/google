output "id" {
  description = "returns a string"
  value       = google_app_engine_firewall_rule.this.id
}

output "project" {
  description = "returns a string"
  value       = google_app_engine_firewall_rule.this.project
}

output "this" {
  value = google_app_engine_firewall_rule.this
}

