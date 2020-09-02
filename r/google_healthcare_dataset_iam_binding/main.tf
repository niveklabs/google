terraform {
  required_providers {
    google = ">= 3.20.0"
  }
}

resource "google_healthcare_dataset_iam_binding" "this" {
  dataset_id = var.dataset_id
  members    = var.members
  role       = var.role
}
