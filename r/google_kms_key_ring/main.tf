terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_kms_key_ring" "this" {
  location = var.location
  name     = var.name
  project  = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

