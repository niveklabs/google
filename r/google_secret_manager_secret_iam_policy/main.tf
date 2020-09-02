terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_secret_manager_secret_iam_policy" "this" {
  policy_data = var.policy_data
  project     = var.project
  secret_id   = var.secret_id
}

