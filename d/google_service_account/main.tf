terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

data "google_service_account" "this" {
  account_id = var.account_id
  project    = var.project
}

