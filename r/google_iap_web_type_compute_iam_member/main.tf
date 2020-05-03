terraform {
  required_providers {
    google = ">= 3.17.0"
  }
}

resource "google_iap_web_type_compute_iam_member" "this" {
  member  = var.member
  project = var.project
  role    = var.role
}

