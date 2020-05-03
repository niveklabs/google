terraform {
  required_providers {
    google = ">= 3.15.0"
  }
}

resource "google_iap_web_type_app_engine_iam_policy" "this" {
  app_id      = var.app_id
  policy_data = var.policy_data
  project     = var.project
}

