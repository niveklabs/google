terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_compute_router_interface" "this" {
  interconnect_attachment = var.interconnect_attachment
  ip_range                = var.ip_range
  name                    = var.name
  project                 = var.project
  region                  = var.region
  router                  = var.router
  vpn_tunnel              = var.vpn_tunnel

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

