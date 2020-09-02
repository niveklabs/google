terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_endpoints_service_iam_policy" "this" {
  policy_data  = var.policy_data
  service_name = var.service_name
}

