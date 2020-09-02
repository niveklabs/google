terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_healthcare_fhir_store_iam_member" "this" {
  fhir_store_id = var.fhir_store_id
  member        = var.member
  role          = var.role
}

