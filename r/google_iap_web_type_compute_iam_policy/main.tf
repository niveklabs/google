terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

resource "google_iap_web_type_compute_iam_policy" "this" {
  policy_data = var.policy_data
  project     = var.project
}

