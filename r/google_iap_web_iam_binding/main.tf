terraform {
  required_providers {
    google = ">= 3.25.0"
  }
}

resource "google_iap_web_iam_binding" "this" {
  members = var.members
  project = var.project
  role    = var.role
}

