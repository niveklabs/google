output "display_name" {
  description = "returns a string"
  value       = data.google_billing_account.this.display_name
}

output "id" {
  description = "returns a string"
  value       = data.google_billing_account.this.id
}

output "name" {
  description = "returns a string"
  value       = data.google_billing_account.this.name
}

output "open" {
  description = "returns a bool"
  value       = data.google_billing_account.this.open
}

output "project_ids" {
  description = "returns a set of string"
  value       = data.google_billing_account.this.project_ids
}

output "this" {
  value = google_billing_account.this
}

