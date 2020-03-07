output "allow_stopping_for_update" {
  description = "returns a bool"
  value       = data.google_compute_instance.this.allow_stopping_for_update
}

output "attached_disk" {
  description = "returns a list of object"
  value       = data.google_compute_instance.this.attached_disk
}

output "boot_disk" {
  description = "returns a list of object"
  value       = data.google_compute_instance.this.boot_disk
}

output "can_ip_forward" {
  description = "returns a bool"
  value       = data.google_compute_instance.this.can_ip_forward
}

output "cpu_platform" {
  description = "returns a string"
  value       = data.google_compute_instance.this.cpu_platform
}

output "deletion_protection" {
  description = "returns a bool"
  value       = data.google_compute_instance.this.deletion_protection
}

output "description" {
  description = "returns a string"
  value       = data.google_compute_instance.this.description
}

output "desired_status" {
  description = "returns a string"
  value       = data.google_compute_instance.this.desired_status
}

output "enable_display" {
  description = "returns a bool"
  value       = data.google_compute_instance.this.enable_display
}

output "guest_accelerator" {
  description = "returns a list of object"
  value       = data.google_compute_instance.this.guest_accelerator
}

output "hostname" {
  description = "returns a string"
  value       = data.google_compute_instance.this.hostname
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_instance.this.id
}

output "instance_id" {
  description = "returns a string"
  value       = data.google_compute_instance.this.instance_id
}

output "label_fingerprint" {
  description = "returns a string"
  value       = data.google_compute_instance.this.label_fingerprint
}

output "labels" {
  description = "returns a map of string"
  value       = data.google_compute_instance.this.labels
}

output "machine_type" {
  description = "returns a string"
  value       = data.google_compute_instance.this.machine_type
}

output "metadata" {
  description = "returns a map of string"
  value       = data.google_compute_instance.this.metadata
}

output "metadata_fingerprint" {
  description = "returns a string"
  value       = data.google_compute_instance.this.metadata_fingerprint
}

output "metadata_startup_script" {
  description = "returns a string"
  value       = data.google_compute_instance.this.metadata_startup_script
}

output "min_cpu_platform" {
  description = "returns a string"
  value       = data.google_compute_instance.this.min_cpu_platform
}

output "network_interface" {
  description = "returns a list of object"
  value       = data.google_compute_instance.this.network_interface
}

output "scheduling" {
  description = "returns a list of object"
  value       = data.google_compute_instance.this.scheduling
}

output "scratch_disk" {
  description = "returns a list of object"
  value       = data.google_compute_instance.this.scratch_disk
}

output "service_account" {
  description = "returns a list of object"
  value       = data.google_compute_instance.this.service_account
}

output "shielded_instance_config" {
  description = "returns a list of object"
  value       = data.google_compute_instance.this.shielded_instance_config
}

output "tags" {
  description = "returns a set of string"
  value       = data.google_compute_instance.this.tags
}

output "tags_fingerprint" {
  description = "returns a string"
  value       = data.google_compute_instance.this.tags_fingerprint
}

output "this" {
  value = google_compute_instance.this
}

