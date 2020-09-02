output "config" {
  description = "returns a list of object"
  value       = google_cloudiot_device.this.config
}

output "id" {
  description = "returns a string"
  value       = google_cloudiot_device.this.id
}

output "last_config_ack_time" {
  description = "returns a string"
  value       = google_cloudiot_device.this.last_config_ack_time
}

output "last_config_send_time" {
  description = "returns a string"
  value       = google_cloudiot_device.this.last_config_send_time
}

output "last_error_status" {
  description = "returns a list of object"
  value       = google_cloudiot_device.this.last_error_status
}

output "last_error_time" {
  description = "returns a string"
  value       = google_cloudiot_device.this.last_error_time
}

output "last_event_time" {
  description = "returns a string"
  value       = google_cloudiot_device.this.last_event_time
}

output "last_heartbeat_time" {
  description = "returns a string"
  value       = google_cloudiot_device.this.last_heartbeat_time
}

output "last_state_time" {
  description = "returns a string"
  value       = google_cloudiot_device.this.last_state_time
}

output "num_id" {
  description = "returns a string"
  value       = google_cloudiot_device.this.num_id
}

output "state" {
  description = "returns a list of object"
  value       = google_cloudiot_device.this.state
}

output "this" {
  value = google_cloudiot_device.this
}

