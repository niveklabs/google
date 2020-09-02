terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

resource "google_iap_web_backend_service_iam_policy" "this" {
  policy_data         = var.policy_data
  project             = var.project
  web_backend_service = var.web_backend_service
}

