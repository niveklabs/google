output "connection_name" {
  description = "returns a string"
  value       = data.google_sql_database_instance.this.connection_name
}

output "database_version" {
  description = "returns a string"
  value       = data.google_sql_database_instance.this.database_version
}

output "first_ip_address" {
  description = "returns a string"
  value       = data.google_sql_database_instance.this.first_ip_address
}

output "id" {
  description = "returns a string"
  value       = data.google_sql_database_instance.this.id
}

output "ip_address" {
  description = "returns a list of object"
  value       = data.google_sql_database_instance.this.ip_address
}

output "master_instance_name" {
  description = "returns a string"
  value       = data.google_sql_database_instance.this.master_instance_name
}

output "private_ip_address" {
  description = "returns a string"
  value       = data.google_sql_database_instance.this.private_ip_address
}

output "project" {
  description = "returns a string"
  value       = data.google_sql_database_instance.this.project
}

output "public_ip_address" {
  description = "returns a string"
  value       = data.google_sql_database_instance.this.public_ip_address
}

output "region" {
  description = "returns a string"
  value       = data.google_sql_database_instance.this.region
}

output "replica_configuration" {
  description = "returns a list of object"
  value       = data.google_sql_database_instance.this.replica_configuration
}

output "root_password" {
  description = "returns a string"
  value       = data.google_sql_database_instance.this.root_password
}

output "self_link" {
  description = "returns a string"
  value       = data.google_sql_database_instance.this.self_link
}

output "server_ca_cert" {
  description = "returns a list of object"
  value       = data.google_sql_database_instance.this.server_ca_cert
}

output "service_account_email_address" {
  description = "returns a string"
  value       = data.google_sql_database_instance.this.service_account_email_address
}

output "settings" {
  description = "returns a list of object"
  value       = data.google_sql_database_instance.this.settings
}

output "this" {
  value = google_sql_database_instance.this
}

