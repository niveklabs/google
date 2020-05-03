terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

resource "google_iap_web_backend_service_iam_binding" "this" {
  members             = var.members
  project             = var.project
  role                = var.role
  web_backend_service = var.web_backend_service
}

