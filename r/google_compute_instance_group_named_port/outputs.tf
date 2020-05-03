output "id" {
  description = "returns a string"
  value       = google_compute_instance_group_named_port.this.id
}

output "project" {
  description = "returns a string"
  value       = google_compute_instance_group_named_port.this.project
}

output "zone" {
  description = "returns a string"
  value       = google_compute_instance_group_named_port.this.zone
}

output "this" {
  value = google_compute_instance_group_named_port.this
}

