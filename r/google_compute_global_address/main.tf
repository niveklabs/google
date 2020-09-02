terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

resource "google_compute_global_address" "this" {
  address       = var.address
  address_type  = var.address_type
  description   = var.description
  ip_version    = var.ip_version
  name          = var.name
  network       = var.network
  prefix_length = var.prefix_length
  project       = var.project
  purpose       = var.purpose

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

