output "id" {
  description = "returns a string"
  value       = google_iap_brand.this.id
}

output "name" {
  description = "returns a string"
  value       = google_iap_brand.this.name
}

output "org_internal_only" {
  description = "returns a bool"
  value       = google_iap_brand.this.org_internal_only
}

output "project" {
  description = "returns a string"
  value       = google_iap_brand.this.project
}

output "this" {
  value = google_iap_brand.this
}

