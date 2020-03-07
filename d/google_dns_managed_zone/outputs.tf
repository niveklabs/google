output "description" {
  description = "returns a string"
  value       = data.google_dns_managed_zone.this.description
}

output "dns_name" {
  description = "returns a string"
  value       = data.google_dns_managed_zone.this.dns_name
}

output "id" {
  description = "returns a string"
  value       = data.google_dns_managed_zone.this.id
}

output "name_servers" {
  description = "returns a list of string"
  value       = data.google_dns_managed_zone.this.name_servers
}

output "visibility" {
  description = "returns a string"
  value       = data.google_dns_managed_zone.this.visibility
}

output "this" {
  value = google_dns_managed_zone.this
}

