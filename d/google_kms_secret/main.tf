terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

data "google_kms_secret" "this" {
  ciphertext = var.ciphertext
  crypto_key = var.crypto_key
}

