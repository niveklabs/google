terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

resource "google_binary_authorization_attestor_iam_policy" "this" {
  attestor    = var.attestor
  policy_data = var.policy_data
  project     = var.project
}

