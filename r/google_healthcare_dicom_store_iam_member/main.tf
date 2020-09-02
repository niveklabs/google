terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_healthcare_dicom_store_iam_member" "this" {
  dicom_store_id = var.dicom_store_id
  member         = var.member
  role           = var.role
}

