terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_iap_web_iam_binding" "this" {
  members = var.members
  project = var.project
  role    = var.role
}

