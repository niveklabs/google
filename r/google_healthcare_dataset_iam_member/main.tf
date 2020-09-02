terraform {
  required_providers {
    google = ">= 3.25.0"
  }
}

resource "google_healthcare_dataset_iam_member" "this" {
  dataset_id = var.dataset_id
  member     = var.member
  role       = var.role
}

