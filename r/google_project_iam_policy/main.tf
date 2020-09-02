terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

resource "google_project_iam_policy" "this" {
  policy_data = var.policy_data
  project     = var.project
}

