terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

resource "google_kms_secret_ciphertext" "this" {
  crypto_key = var.crypto_key
  plaintext  = var.plaintext

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

