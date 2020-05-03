terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_iap_app_engine_service_iam_member" "this" {
  app_id  = var.app_id
  member  = var.member
  project = var.project
  role    = var.role
  service = var.service
}

