output "distribution_policy_zones" {
  description = "returns a set of string"
  value       = google_compute_region_instance_group_manager.this.distribution_policy_zones
}

output "fingerprint" {
  description = "returns a string"
  value       = google_compute_region_instance_group_manager.this.fingerprint
}

output "id" {
  description = "returns a string"
  value       = google_compute_region_instance_group_manager.this.id
}

output "instance_group" {
  description = "returns a string"
  value       = google_compute_region_instance_group_manager.this.instance_group
}

output "instance_template" {
  description = "returns a string"
  value       = google_compute_region_instance_group_manager.this.instance_template
}

output "project" {
  description = "returns a string"
  value       = google_compute_region_instance_group_manager.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_region_instance_group_manager.this.self_link
}

output "target_size" {
  description = "returns a number"
  value       = google_compute_region_instance_group_manager.this.target_size
}

output "update_strategy" {
  description = "returns a string"
  value       = google_compute_region_instance_group_manager.this.update_strategy
}

output "this" {
  value = google_compute_region_instance_group_manager.this
}

