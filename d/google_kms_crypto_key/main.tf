terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

data "google_kms_crypto_key" "this" {
  key_ring = var.key_ring
  name     = var.name
}

