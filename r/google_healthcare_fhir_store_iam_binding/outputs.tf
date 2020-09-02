output "etag" {
  description = "returns a string"
  value       = google_healthcare_fhir_store_iam_binding.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_healthcare_fhir_store_iam_binding.this.id
}

output "this" {
  value = google_healthcare_fhir_store_iam_binding.this
}

