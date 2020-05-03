terraform {
  required_providers {
    google = ">= 3.17.0"
  }
}

data "google_service_account_access_token" "this" {
  delegates              = var.delegates
  lifetime               = var.lifetime
  scopes                 = var.scopes
  target_service_account = var.target_service_account
}

