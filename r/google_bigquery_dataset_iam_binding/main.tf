terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

resource "google_bigquery_dataset_iam_binding" "this" {
  dataset_id = var.dataset_id
  members    = var.members
  project    = var.project
  role       = var.role
}

