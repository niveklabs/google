terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

resource "google_cloudfunctions_function_iam_policy" "this" {
  cloud_function = var.cloud_function
  policy_data    = var.policy_data
  project        = var.project
  region         = var.region
}

