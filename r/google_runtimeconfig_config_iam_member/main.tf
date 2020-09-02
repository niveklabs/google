terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_runtimeconfig_config_iam_member" "this" {
  config  = var.config
  member  = var.member
  project = var.project
  role    = var.role
}

