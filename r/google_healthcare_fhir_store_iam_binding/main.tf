terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

resource "google_healthcare_fhir_store_iam_binding" "this" {
  fhir_store_id = var.fhir_store_id
  members       = var.members
  role          = var.role
}

