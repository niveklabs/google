terraform {
  required_providers {
    google = ">= 3.20.0"
  }
}

resource "google_service_account_iam_member" "this" {
  member             = var.member
  role               = var.role
  service_account_id = var.service_account_id
}

