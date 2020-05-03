output "allow_stopping_for_update" {
  description = "returns a bool"
  value       = google_compute_instance_from_template.this.allow_stopping_for_update
}

output "attached_disk" {
  description = "returns a list of object"
  value       = google_compute_instance_from_template.this.attached_disk
}

output "can_ip_forward" {
  description = "returns a bool"
  value       = google_compute_instance_from_template.this.can_ip_forward
}

output "cpu_platform" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.cpu_platform
}

output "current_status" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.current_status
}

output "deletion_protection" {
  description = "returns a bool"
  value       = google_compute_instance_from_template.this.deletion_protection
}

output "description" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.description
}

output "desired_status" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.desired_status
}

output "enable_display" {
  description = "returns a bool"
  value       = google_compute_instance_from_template.this.enable_display
}

output "guest_accelerator" {
  description = "returns a list of object"
  value       = google_compute_instance_from_template.this.guest_accelerator
}

output "hostname" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.hostname
}

output "id" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.id
}

output "instance_id" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.instance_id
}

output "label_fingerprint" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.label_fingerprint
}

output "labels" {
  description = "returns a map of string"
  value       = google_compute_instance_from_template.this.labels
}

output "machine_type" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.machine_type
}

output "metadata" {
  description = "returns a map of string"
  value       = google_compute_instance_from_template.this.metadata
}

output "metadata_fingerprint" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.metadata_fingerprint
}

output "metadata_startup_script" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.metadata_startup_script
}

output "min_cpu_platform" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.min_cpu_platform
}

output "project" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.project
}

output "scratch_disk" {
  description = "returns a list of object"
  value       = google_compute_instance_from_template.this.scratch_disk
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.self_link
}

output "service_account" {
  description = "returns a list of object"
  value       = google_compute_instance_from_template.this.service_account
}

output "tags" {
  description = "returns a set of string"
  value       = google_compute_instance_from_template.this.tags
}

output "tags_fingerprint" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.tags_fingerprint
}

output "zone" {
  description = "returns a string"
  value       = google_compute_instance_from_template.this.zone
}

output "this" {
  value = google_compute_instance_from_template.this
}

