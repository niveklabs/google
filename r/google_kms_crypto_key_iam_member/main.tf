terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

resource "google_kms_crypto_key_iam_member" "this" {
  crypto_key_id = var.crypto_key_id
  member        = var.member
  role          = var.role
}

