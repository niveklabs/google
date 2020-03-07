terraform {
  required_providers {
    google = ">= 3.11.0"
  }
}

resource "google_kms_crypto_key_iam_policy" "this" {
  crypto_key_id = var.crypto_key_id
  policy_data   = var.policy_data
}

