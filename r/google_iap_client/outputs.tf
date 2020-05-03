output "client_id" {
  description = "returns a string"
  value       = google_iap_client.this.client_id
}

output "id" {
  description = "returns a string"
  value       = google_iap_client.this.id
}

output "secret" {
  description = "returns a string"
  value       = google_iap_client.this.secret
  sensitive   = true
}

output "this" {
  value = google_iap_client.this
}

