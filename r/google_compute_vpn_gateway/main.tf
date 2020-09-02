terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_compute_vpn_gateway" "this" {
  description = var.description
  name        = var.name
  network     = var.network
  project     = var.project
  region      = var.region

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

