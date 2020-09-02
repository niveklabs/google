terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_billing_account_iam_member" "this" {
  billing_account_id = var.billing_account_id
  member             = var.member
  role               = var.role
}

