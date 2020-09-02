terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_healthcare_hl7_v2_store_iam_policy" "this" {
  hl7_v2_store_id = var.hl7_v2_store_id
  policy_data     = var.policy_data
}

