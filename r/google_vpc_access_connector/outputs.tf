output "id" {
  description = "returns a string"
  value       = google_vpc_access_connector.this.id
}

output "project" {
  description = "returns a string"
  value       = google_vpc_access_connector.this.project
}

output "self_link" {
  description = "returns a string"
  value       = google_vpc_access_connector.this.self_link
}

output "state" {
  description = "returns a string"
  value       = google_vpc_access_connector.this.state
}

output "this" {
  value = google_vpc_access_connector.this
}

