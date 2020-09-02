terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_healthcare_hl7_v2_store_iam_binding" "this" {
  hl7_v2_store_id = var.hl7_v2_store_id
  members         = var.members
  role            = var.role
}

