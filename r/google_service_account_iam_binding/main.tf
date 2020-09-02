terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_service_account_iam_binding" "this" {
  members            = var.members
  role               = var.role
  service_account_id = var.service_account_id
}

