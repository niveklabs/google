terraform {
  required_providers {
    google = ">= 3.13.0"
  }
}

resource "google_service_account" "this" {
  account_id   = var.account_id
  description  = var.description
  display_name = var.display_name
  project      = var.project
}

