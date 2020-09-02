terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_iap_web_iam_member" "this" {
  member  = var.member
  project = var.project
  role    = var.role
}

