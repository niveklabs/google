terraform {
  required_providers {
    google = ">= 3.13.0"
  }
}

data "google_service_account_key" "this" {
  name            = var.name
  project         = var.project
  public_key_type = var.public_key_type
}

