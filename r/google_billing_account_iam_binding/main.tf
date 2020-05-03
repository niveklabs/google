terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

resource "google_billing_account_iam_binding" "this" {
  billing_account_id = var.billing_account_id
  members            = var.members
  role               = var.role
}

