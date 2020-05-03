terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

resource "google_cloud_run_service_iam_policy" "this" {
  location    = var.location
  policy_data = var.policy_data
  project     = var.project
  service     = var.service
}

