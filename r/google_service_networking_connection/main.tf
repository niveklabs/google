terraform {
  required_providers {
    google = ">= 3.17.0"
  }
}

resource "google_service_networking_connection" "this" {
  network                 = var.network
  reserved_peering_ranges = var.reserved_peering_ranges
  service                 = var.service
}

