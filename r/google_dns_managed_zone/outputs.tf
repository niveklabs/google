output "id" {
  description = "returns a string"
  value       = google_dns_managed_zone.this.id
}

output "name_servers" {
  description = "returns a list of string"
  value       = google_dns_managed_zone.this.name_servers
}

output "project" {
  description = "returns a string"
  value       = google_dns_managed_zone.this.project
}

output "this" {
  value = google_dns_managed_zone.this
}

