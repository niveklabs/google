terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_service_account_key" "this" {
  key_algorithm      = var.key_algorithm
  pgp_key            = var.pgp_key
  private_key_type   = var.private_key_type
  public_key_type    = var.public_key_type
  service_account_id = var.service_account_id
}

