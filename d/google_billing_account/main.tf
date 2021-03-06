terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

data "google_billing_account" "this" {
  billing_account = var.billing_account
  display_name    = var.display_name
  open            = var.open
}

