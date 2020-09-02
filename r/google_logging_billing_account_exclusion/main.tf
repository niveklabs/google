terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_logging_billing_account_exclusion" "this" {
  billing_account = var.billing_account
  description     = var.description
  disabled        = var.disabled
  filter          = var.filter
  name            = var.name
}

