output "additional_zones" {
  description = "returns a set of string"
  value       = google_container_cluster.this.additional_zones
}

output "cluster_ipv4_cidr" {
  description = "returns a string"
  value       = google_container_cluster.this.cluster_ipv4_cidr
}

output "default_max_pods_per_node" {
  description = "returns a number"
  value       = google_container_cluster.this.default_max_pods_per_node
}

output "enable_intranode_visibility" {
  description = "returns a bool"
  value       = google_container_cluster.this.enable_intranode_visibility
}

output "enable_tpu" {
  description = "returns a bool"
  value       = google_container_cluster.this.enable_tpu
}

output "endpoint" {
  description = "returns a string"
  value       = google_container_cluster.this.endpoint
}

output "id" {
  description = "returns a string"
  value       = google_container_cluster.this.id
}

output "instance_group_urls" {
  description = "returns a list of string"
  value       = google_container_cluster.this.instance_group_urls
}

output "label_fingerprint" {
  description = "returns a string"
  value       = google_container_cluster.this.label_fingerprint
}

output "location" {
  description = "returns a string"
  value       = google_container_cluster.this.location
}

output "logging_service" {
  description = "returns a string"
  value       = google_container_cluster.this.logging_service
}

output "master_version" {
  description = "returns a string"
  value       = google_container_cluster.this.master_version
}

output "monitoring_service" {
  description = "returns a string"
  value       = google_container_cluster.this.monitoring_service
}

output "node_locations" {
  description = "returns a set of string"
  value       = google_container_cluster.this.node_locations
}

output "node_version" {
  description = "returns a string"
  value       = google_container_cluster.this.node_version
}

output "operation" {
  description = "returns a string"
  value       = google_container_cluster.this.operation
}

output "project" {
  description = "returns a string"
  value       = google_container_cluster.this.project
}

output "region" {
  description = "returns a string"
  value       = google_container_cluster.this.region
}

output "services_ipv4_cidr" {
  description = "returns a string"
  value       = google_container_cluster.this.services_ipv4_cidr
}

output "subnetwork" {
  description = "returns a string"
  value       = google_container_cluster.this.subnetwork
}

output "zone" {
  description = "returns a string"
  value       = google_container_cluster.this.zone
}

output "this" {
  value = google_container_cluster.this
}

