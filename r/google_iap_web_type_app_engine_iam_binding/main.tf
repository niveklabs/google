terraform {
  required_providers {
    google = ">= 3.19.0"
  }
}

resource "google_iap_web_type_app_engine_iam_binding" "this" {
  app_id  = var.app_id
  members = var.members
  project = var.project
  role    = var.role
}

