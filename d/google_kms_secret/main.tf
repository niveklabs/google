terraform {
  required_providers {
    google = ">= 3.20.0"
  }
}

data "google_kms_secret" "this" {
  additional_authenticated_data = var.additional_authenticated_data
  ciphertext                    = var.ciphertext
  crypto_key                    = var.crypto_key
}

