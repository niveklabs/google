output "id" {
  description = "returns a string"
  value       = data.google_compute_region_instance_group.this.id
}

output "instances" {
  description = "returns a list of object"
  value       = data.google_compute_region_instance_group.this.instances
}

output "name" {
  description = "returns a string"
  value       = data.google_compute_region_instance_group.this.name
}

output "project" {
  description = "returns a string"
  value       = data.google_compute_region_instance_group.this.project
}

output "region" {
  description = "returns a string"
  value       = data.google_compute_region_instance_group.this.region
}

output "self_link" {
  description = "returns a string"
  value       = data.google_compute_region_instance_group.this.self_link
}

output "size" {
  description = "returns a number"
  value       = data.google_compute_region_instance_group.this.size
}

output "this" {
  value = google_compute_region_instance_group.this
}

