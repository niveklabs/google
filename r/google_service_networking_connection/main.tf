terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_service_networking_connection" "this" {
  network                 = var.network
  reserved_peering_ranges = var.reserved_peering_ranges
  service                 = var.service

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

