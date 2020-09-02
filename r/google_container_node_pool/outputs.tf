output "id" {
  description = "returns a string"
  value       = google_container_node_pool.this.id
}

output "initial_node_count" {
  description = "returns a number"
  value       = google_container_node_pool.this.initial_node_count
}

output "instance_group_urls" {
  description = "returns a list of string"
  value       = google_container_node_pool.this.instance_group_urls
}

output "location" {
  description = "returns a string"
  value       = google_container_node_pool.this.location
}

output "max_pods_per_node" {
  description = "returns a number"
  value       = google_container_node_pool.this.max_pods_per_node
}

output "name" {
  description = "returns a string"
  value       = google_container_node_pool.this.name
}

output "name_prefix" {
  description = "returns a string"
  value       = google_container_node_pool.this.name_prefix
}

output "node_count" {
  description = "returns a number"
  value       = google_container_node_pool.this.node_count
}

output "node_locations" {
  description = "returns a set of string"
  value       = google_container_node_pool.this.node_locations
}

output "project" {
  description = "returns a string"
  value       = google_container_node_pool.this.project
}

output "region" {
  description = "returns a string"
  value       = google_container_node_pool.this.region
}

output "version" {
  description = "returns a string"
  value       = google_container_node_pool.this.version
}

output "zone" {
  description = "returns a string"
  value       = google_container_node_pool.this.zone
}

output "this" {
  value = google_container_node_pool.this
}

