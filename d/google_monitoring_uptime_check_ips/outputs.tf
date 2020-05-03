output "id" {
  description = "returns a string"
  value       = data.google_monitoring_uptime_check_ips.this.id
}

output "uptime_check_ips" {
  description = "returns a list of object"
  value       = data.google_monitoring_uptime_check_ips.this.uptime_check_ips
}

output "this" {
  value = google_monitoring_uptime_check_ips.this
}

