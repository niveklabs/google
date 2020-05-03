terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_iap_app_engine_version_iam_policy" "this" {
  app_id      = var.app_id
  policy_data = var.policy_data
  project     = var.project
  service     = var.service
  version_id  = var.version_id
}

