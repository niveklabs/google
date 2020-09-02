terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

resource "google_compute_router_peer" "this" {
  advertise_mode            = var.advertise_mode
  advertised_groups         = var.advertised_groups
  advertised_route_priority = var.advertised_route_priority
  interface                 = var.interface
  name                      = var.name
  peer_asn                  = var.peer_asn
  peer_ip_address           = var.peer_ip_address
  project                   = var.project
  region                    = var.region
  router                    = var.router

  dynamic "advertised_ip_ranges" {
    for_each = var.advertised_ip_ranges
    content {
      description = advertised_ip_ranges.value["description"]
      range       = advertised_ip_ranges.value["range"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

