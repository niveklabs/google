output "cert" {
  description = "returns a string"
  value       = google_sql_ssl_cert.this.cert
}

output "cert_serial_number" {
  description = "returns a string"
  value       = google_sql_ssl_cert.this.cert_serial_number
}

output "create_time" {
  description = "returns a string"
  value       = google_sql_ssl_cert.this.create_time
}

output "expiration_time" {
  description = "returns a string"
  value       = google_sql_ssl_cert.this.expiration_time
}

output "id" {
  description = "returns a string"
  value       = google_sql_ssl_cert.this.id
}

output "private_key" {
  description = "returns a string"
  value       = google_sql_ssl_cert.this.private_key
  sensitive   = true
}

output "project" {
  description = "returns a string"
  value       = google_sql_ssl_cert.this.project
}

output "server_ca_cert" {
  description = "returns a string"
  value       = google_sql_ssl_cert.this.server_ca_cert
}

output "sha1_fingerprint" {
  description = "returns a string"
  value       = google_sql_ssl_cert.this.sha1_fingerprint
}

output "this" {
  value = google_sql_ssl_cert.this
}

