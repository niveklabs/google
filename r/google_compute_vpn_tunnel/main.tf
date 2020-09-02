terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

resource "google_compute_vpn_tunnel" "this" {
  description             = var.description
  ike_version             = var.ike_version
  local_traffic_selector  = var.local_traffic_selector
  name                    = var.name
  peer_ip                 = var.peer_ip
  project                 = var.project
  region                  = var.region
  remote_traffic_selector = var.remote_traffic_selector
  router                  = var.router
  shared_secret           = var.shared_secret
  target_vpn_gateway      = var.target_vpn_gateway

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

