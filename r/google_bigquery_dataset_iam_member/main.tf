terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_bigquery_dataset_iam_member" "this" {
  dataset_id = var.dataset_id
  member     = var.member
  project    = var.project
  role       = var.role
}

