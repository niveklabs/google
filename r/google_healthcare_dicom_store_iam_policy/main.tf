terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

resource "google_healthcare_dicom_store_iam_policy" "this" {
  dicom_store_id = var.dicom_store_id
  policy_data    = var.policy_data
}

