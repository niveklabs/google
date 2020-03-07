output "id" {
  description = "returns a string"
  value       = data.google_dns_keys.this.id
}

output "key_signing_keys" {
  description = "returns a list of object"
  value       = data.google_dns_keys.this.key_signing_keys
}

output "project" {
  description = "returns a string"
  value       = data.google_dns_keys.this.project
}

output "zone_signing_keys" {
  description = "returns a list of object"
  value       = data.google_dns_keys.this.zone_signing_keys
}

output "this" {
  value = google_dns_keys.this
}

