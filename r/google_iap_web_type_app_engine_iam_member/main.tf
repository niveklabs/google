terraform {
  required_providers {
    google = ">= 3.19.0"
  }
}

resource "google_iap_web_type_app_engine_iam_member" "this" {
  app_id  = var.app_id
  member  = var.member
  project = var.project
  role    = var.role
}

