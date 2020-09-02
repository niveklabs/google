terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

resource "google_kms_crypto_key_iam_binding" "this" {
  crypto_key_id = var.crypto_key_id
  members       = var.members
  role          = var.role
}

