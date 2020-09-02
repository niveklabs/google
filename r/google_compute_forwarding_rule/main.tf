terraform {
  required_providers {
    google = ">= 3.22.0"
  }
}

resource "google_compute_forwarding_rule" "this" {
  all_ports             = var.all_ports
  allow_global_access   = var.allow_global_access
  backend_service       = var.backend_service
  description           = var.description
  ip_address            = var.ip_address
  ip_protocol           = var.ip_protocol
  ip_version            = var.ip_version
  load_balancing_scheme = var.load_balancing_scheme
  name                  = var.name
  network               = var.network
  network_tier          = var.network_tier
  port_range            = var.port_range
  ports                 = var.ports
  project               = var.project
  region                = var.region
  service_label         = var.service_label
  subnetwork            = var.subnetwork
  target                = var.target

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

