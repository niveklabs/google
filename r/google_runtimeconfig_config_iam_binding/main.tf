terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_runtimeconfig_config_iam_binding" "this" {
  config  = var.config
  members = var.members
  project = var.project
  role    = var.role
}

