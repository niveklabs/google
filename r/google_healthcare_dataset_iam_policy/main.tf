terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_healthcare_dataset_iam_policy" "this" {
  dataset_id  = var.dataset_id
  policy_data = var.policy_data
}

