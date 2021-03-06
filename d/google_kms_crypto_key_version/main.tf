terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

data "google_kms_crypto_key_version" "this" {
  crypto_key = var.crypto_key
  version    = var.version
}

