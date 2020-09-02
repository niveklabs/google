output "id" {
  description = "returns a string"
  value       = google_healthcare_fhir_store.this.id
}

output "self_link" {
  description = "returns a string"
  value       = google_healthcare_fhir_store.this.self_link
}

output "this" {
  value = google_healthcare_fhir_store.this
}

