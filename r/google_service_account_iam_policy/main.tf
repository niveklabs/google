terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

resource "google_service_account_iam_policy" "this" {
  policy_data        = var.policy_data
  service_account_id = var.service_account_id
}

