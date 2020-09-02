terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_healthcare_fhir_store_iam_policy" "this" {
  fhir_store_id = var.fhir_store_id
  policy_data   = var.policy_data
}

