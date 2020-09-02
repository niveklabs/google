terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

resource "google_healthcare_dicom_store_iam_binding" "this" {
  dicom_store_id = var.dicom_store_id
  members        = var.members
  role           = var.role
}

