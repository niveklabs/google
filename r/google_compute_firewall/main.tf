terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

resource "google_compute_firewall" "this" {
  description             = var.description
  destination_ranges      = var.destination_ranges
  direction               = var.direction
  disabled                = var.disabled
  enable_logging          = var.enable_logging
  name                    = var.name
  network                 = var.network
  priority                = var.priority
  project                 = var.project
  source_ranges           = var.source_ranges
  source_service_accounts = var.source_service_accounts
  source_tags             = var.source_tags
  target_service_accounts = var.target_service_accounts
  target_tags             = var.target_tags

  dynamic "allow" {
    for_each = var.allow
    content {
      ports    = allow.value["ports"]
      protocol = allow.value["protocol"]
    }
  }

  dynamic "deny" {
    for_each = var.deny
    content {
      ports    = deny.value["ports"]
      protocol = deny.value["protocol"]
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

