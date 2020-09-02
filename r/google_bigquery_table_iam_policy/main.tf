terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_bigquery_table_iam_policy" "this" {
  dataset_id  = var.dataset_id
  policy_data = var.policy_data
  project     = var.project
  table_id    = var.table_id
}

