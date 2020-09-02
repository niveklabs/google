terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_sourcerepo_repository_iam_policy" "this" {
  policy_data = var.policy_data
  project     = var.project
  repository  = var.repository
}

