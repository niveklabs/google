terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_kms_secret_ciphertext" "this" {
  additional_authenticated_data = var.additional_authenticated_data
  crypto_key                    = var.crypto_key
  plaintext                     = var.plaintext

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

