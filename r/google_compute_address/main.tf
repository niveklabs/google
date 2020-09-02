terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_compute_address" "this" {
  address      = var.address
  address_type = var.address_type
  description  = var.description
  name         = var.name
  network_tier = var.network_tier
  project      = var.project
  purpose      = var.purpose
  region       = var.region
  subnetwork   = var.subnetwork

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

