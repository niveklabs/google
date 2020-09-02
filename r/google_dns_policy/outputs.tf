output "id" {
  description = "returns a string"
  value       = google_dns_policy.this.id
}

output "project" {
  description = "returns a string"
  value       = google_dns_policy.this.project
}

output "this" {
  value = google_dns_policy.this
}

