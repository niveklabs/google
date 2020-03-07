output "active_version" {
  description = "returns a string"
  value       = data.google_sql_ca_certs.this.active_version
}

output "certs" {
  description = "returns a list of object"
  value       = data.google_sql_ca_certs.this.certs
}

output "id" {
  description = "returns a string"
  value       = data.google_sql_ca_certs.this.id
}

output "project" {
  description = "returns a string"
  value       = data.google_sql_ca_certs.this.project
}

output "this" {
  value = google_sql_ca_certs.this
}

