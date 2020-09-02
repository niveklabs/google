terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_runtimeconfig_config_iam_policy" "this" {
  config      = var.config
  policy_data = var.policy_data
  project     = var.project
}

