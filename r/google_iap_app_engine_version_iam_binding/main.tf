terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_iap_app_engine_version_iam_binding" "this" {
  app_id     = var.app_id
  members    = var.members
  project    = var.project
  role       = var.role
  service    = var.service
  version_id = var.version_id
}

