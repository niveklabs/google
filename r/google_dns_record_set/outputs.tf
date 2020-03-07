output "id" {
  description = "returns a string"
  value       = google_dns_record_set.this.id
}

output "project" {
  description = "returns a string"
  value       = google_dns_record_set.this.project
}

output "this" {
  value = google_dns_record_set.this
}

