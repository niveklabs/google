terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_active_directory_domain" "this" {
  admin               = var.admin
  authorized_networks = var.authorized_networks
  domain_name         = var.domain_name
  labels              = var.labels
  locations           = var.locations
  project             = var.project
  reserved_ip_range   = var.reserved_ip_range

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

