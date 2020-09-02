terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_iap_web_type_compute_iam_binding" "this" {
  members = var.members
  project = var.project
  role    = var.role
}

