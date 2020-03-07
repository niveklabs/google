output "default_cluster_version" {
  description = "returns a string"
  value       = data.google_container_engine_versions.this.default_cluster_version
}

output "id" {
  description = "returns a string"
  value       = data.google_container_engine_versions.this.id
}

output "latest_master_version" {
  description = "returns a string"
  value       = data.google_container_engine_versions.this.latest_master_version
}

output "latest_node_version" {
  description = "returns a string"
  value       = data.google_container_engine_versions.this.latest_node_version
}

output "region" {
  description = "returns a string"
  value       = data.google_container_engine_versions.this.region
}

output "valid_master_versions" {
  description = "returns a list of string"
  value       = data.google_container_engine_versions.this.valid_master_versions
}

output "valid_node_versions" {
  description = "returns a list of string"
  value       = data.google_container_engine_versions.this.valid_node_versions
}

output "zone" {
  description = "returns a string"
  value       = data.google_container_engine_versions.this.zone
}

output "this" {
  value = google_container_engine_versions.this
}

