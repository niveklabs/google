terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_billing_account_iam_policy" "this" {
  billing_account_id = var.billing_account_id
  policy_data        = var.policy_data
}

