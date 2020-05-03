terraform {
  required_providers {
    google = ">= 3.13.0"
  }
}

data "google_kms_crypto_key_version" "this" {
  crypto_key = var.crypto_key
  version    = var.version
}

