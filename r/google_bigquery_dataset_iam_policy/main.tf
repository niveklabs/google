terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_bigquery_dataset_iam_policy" "this" {
  dataset_id  = var.dataset_id
  policy_data = var.policy_data
  project     = var.project
}

