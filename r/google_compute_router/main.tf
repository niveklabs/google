terraform {
  required_providers {
    google = ">= 3.11.0"
  }
}

resource "google_compute_router" "this" {
  description = var.description
  name        = var.name
  network     = var.network
  project     = var.project
  region      = var.region

  dynamic "bgp" {
    for_each = var.bgp
    content {
      advertise_mode    = bgp.value["advertise_mode"]
      advertised_groups = bgp.value["advertised_groups"]
      asn               = bgp.value["asn"]

      dynamic "advertised_ip_ranges" {
        for_each = bgp.value.advertised_ip_ranges
        content {
          description = advertised_ip_ranges.value["description"]
          range       = advertised_ip_ranges.value["range"]
        }
      }

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

