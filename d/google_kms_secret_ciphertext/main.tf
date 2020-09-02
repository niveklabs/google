terraform {
  required_providers {
    google = ">= 3.20.0"
  }
}

data "google_kms_secret_ciphertext" "this" {
  crypto_key = var.crypto_key
  plaintext  = var.plaintext
}

