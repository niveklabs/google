output "description" {
  description = "returns a string"
  value       = data.google_compute_instance_group.this.description
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_instance_group.this.id
}

output "instances" {
  description = "returns a set of string"
  value       = data.google_compute_instance_group.this.instances
}

output "named_port" {
  description = "returns a list of object"
  value       = data.google_compute_instance_group.this.named_port
}

output "network" {
  description = "returns a string"
  value       = data.google_compute_instance_group.this.network
}

output "project" {
  description = "returns a string"
  value       = data.google_compute_instance_group.this.project
}

output "self_link" {
  description = "returns a string"
  value       = data.google_compute_instance_group.this.self_link
}

output "size" {
  description = "returns a number"
  value       = data.google_compute_instance_group.this.size
}

output "zone" {
  description = "returns a string"
  value       = data.google_compute_instance_group.this.zone
}

output "this" {
  value = google_compute_instance_group.this
}

