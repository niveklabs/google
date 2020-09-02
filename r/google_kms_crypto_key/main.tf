terraform {
  required_providers {
    google = ">= 3.22.0"
  }
}

resource "google_kms_crypto_key" "this" {
  key_ring        = var.key_ring
  labels          = var.labels
  name            = var.name
  purpose         = var.purpose
  rotation_period = var.rotation_period

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

  dynamic "version_template" {
    for_each = var.version_template
    content {
      algorithm        = version_template.value["algorithm"]
      protection_level = version_template.value["protection_level"]
    }
  }

}

