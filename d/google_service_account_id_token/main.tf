terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

data "google_service_account_id_token" "this" {
  delegates              = var.delegates
  include_email          = var.include_email
  target_audience        = var.target_audience
  target_service_account = var.target_service_account
}

