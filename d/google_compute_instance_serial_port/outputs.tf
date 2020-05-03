output "contents" {
  description = "returns a string"
  value       = data.google_compute_instance_serial_port.this.contents
}

output "id" {
  description = "returns a string"
  value       = data.google_compute_instance_serial_port.this.id
}

output "project" {
  description = "returns a string"
  value       = data.google_compute_instance_serial_port.this.project
}

output "zone" {
  description = "returns a string"
  value       = data.google_compute_instance_serial_port.this.zone
}

output "this" {
  value = google_compute_instance_serial_port.this
}

